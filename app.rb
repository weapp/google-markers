#!/usr/bin/env ruby

require 'bundler/setup'
Bundler.require(:default)
require 'json'
require './sample_location'

String.class_eval do
  def join
    self
  end
end

class GMaps < Sinatra::Base

  def broadcast_location(location)
    msg = location.merge(type: 'location').to_json
    GMaps.sockets.each { |socket| socket.send(msg) }
  end

  def initialize
    super

    EM.next_tick do
      @redis ||= EM::Hiredis.connect
      @redis.pubsub.subscribe('locations') do |msg|
        EM.next_tick { broadcast_location(JSON.parse(msg)) }
      end
    end
  end
  # threaded - False: Will take requests on the reactor thread
  #            True:  Will queue request for background thread
  configure do
    set :threaded, false
    set :sockets, []
  end

  get '/' do
    if !request.websocket?
      erb :index
    else
      request.websocket do |ws|
        ws.onopen do
          ws.send({type: 'msg', msg: 'Hello World!'}.to_json)
          settings.sockets << ws
        end
        ws.onmessage do |msg|
          EM.next_tick do
            settings.sockets.each do |s|
              s.send(msg)
              broadcast_location(sample_location)
            end
          end
        end
        ws.onclose do
          warn('websocket closed')
          settings.sockets.delete(ws)
        end
      end
    end
  end
end
