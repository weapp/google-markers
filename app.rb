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

class Sockets
  attr_reader :sockets

  def initialize
    @sockets = []
  end

  def broadcast(*args)
    sockets.each { |socket| socket.send(*args) }
  end

  def <<(socket)
    sockets << socket
  end

  def delete(ws)
    sockets.delete(ws)
  end
end

class JsonWebSocket
  attr_reader :socket

  def initialize(socket)
    @socket = socket
  end

  def onopen
    @socket.onopen { yield }
  end

  def onmessage
    @socket.onmessage do |message|
      EM.next_tick { yield JSON.parse(message) }
    end
  end

  def onclose
    @socket.onclose { yield }
  end

  def send(type, message = nil)
    if message
      send(message.merge(type: type))
    else
      @socket.send(type.to_json)
    end
  end
end

class JsonRedis
  attr_reader :redis

  def initialize
    EM.next_tick { @redis ||= EM::Hiredis.connect }
  end

  def subscribe(channel)
    EM.next_tick do
      redis.pubsub.subscribe(channel) do |msg|
        EM.next_tick { yield JSON.parse(msg) }
      end
    end
  end

  def publish(channel, value)
    redis.publish(channel, value.to_json)
  end
end

class GMaps < Sinatra::Base
  def broadcast_location_by_ip(ip)
    p byip: ip
    location = Geo.from(ip)
    GMaps.sockets.broadcast('location', location) if location
  end

  def link_redis_to_socket(redis_channel, socket_type)
    settings.redis.subscribe(redis_channel) do |value|
      settings.sockets.broadcast(socket_type, value)
    end
  end

  def initialize
    super
    link_redis_to_socket('locations', 'location')
  end
  # threaded - False: Will take requests on the reactor thread
  #            True:  Will queue request for background thread
  configure do
    set :threaded, false
    set :sockets, Sockets.new
    set :redis, JsonRedis.new
  end

  get '/' do
    if !request.websocket?
      erb :index
    else
      request.websocket do |ws|
        jws = ::JsonWebSocket.new(ws)

        jws.onopen do
          jws.send(type: 'msg', msg: 'Hello World!')
          settings.sockets << jws
          broadcast_location_by_ip(env['REMOTE_ADDR'])
        end

        jws.onmessage do |msg|
          settings.sockets.broadcast(msg)
          # broadcast_location_by_ip(msg["msg"])
          settings.redis.publish('locations', sample_location)
        end

        jws.onclose do
          warn('websocket closed')
          settings.sockets.delete(jws)
        end
      end
    end
  end
end
