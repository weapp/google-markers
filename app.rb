#!/usr/bin/env ruby

require 'bundler/setup'
Bundler.require(:default)
require 'json'
require './sample_location'
require './geo'

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

  def broadcast_location_by_ip(ip)
    p "byip", ip
    location = Geo.from(ip)
    broadcast_location(location) if location
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
          broadcast_location_by_ip(env["REMOTE_ADDR"])
        end
        ws.onmessage do |msg|
          EM.next_tick do
            settings.sockets.each do |s|
              s.send(msg)
              broadcast_location_by_ip(JSON[msg]["msg"])
              @redis.publish("locations", sample_location.to_json)
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
