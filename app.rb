#!/usr/bin/env ruby

require 'bundler/setup'
Bundler.require(:default)
require 'json'


def run(opts)
  # Start he reactor
  EM.run do
    server  = opts[:server] || 'thin'
    host    = opts[:host]   || '0.0.0.0'
    port    = opts[:port]   || '3000'
    web_app = opts[:app]

    RedisConnection.redis.pubsub.subscribe("locations") { |msg|
      msg = JSON.parse(msg).merge({type: "location"}).to_json
      EM.next_tick { HelloApp.sockets.each{|s| s.send(msg) } }
    }

    dispatch = Rack::Builder.app do
      map '/' do
        run web_app
      end
    end

    unless ['thin', 'hatetepe', 'goliath'].include? server
      raise "Need an EM webserver, but #{server} isn't"
    end

    Rack::Server.start({
      app:    dispatch,
      server: server,
      Host:   host,
      Port:   port,
      signals: false,
    })
  end
end

# set :server, 'thin'
# set :sockets, []


module RedisConnection
  module_function
  def redis
    @redis ||= EM::Hiredis.connect
  end
end

# config.after_initialize do
#   puts "EventMachine running on . Ctrl + C to stop."
#   # if ENV['EM']
#   #   EM.run do
#   #     host = '0.0.0.0'
#   #     port = 3001

#   #     # hit Ctrl + C to stop
#   #     Signal.trap("INT")  { EventMachine.stop }
#   #     Signal.trap("TERM") { EventMachine.stop }

#   #     EventMachine::start_server host, port, SomeModule

#   #     puts "EventMachine running on #{host}:#{port}. Ctrl + C to stop."
#   #   end
#   # end
# end

# puts "---"
# p settings.sockets
# puts "---"

# get '/' do
#   if !request.websocket?
#     erb :index
#   else
#     request.websocket do |ws|
#       ws.onopen do
#         ws.send({type: "msg", msg: "Hello World!"}.to_json)
#         settings.sockets << ws
#       end
#       ws.onmessage do |msg|
#         EM.next_tick { settings.sockets.each{|s| s.send(msg) } }
#         EM.next_tick { settings.sockets.each{|s| s.send({type: "location", lat:  -33.890542, lon: 151.274856}.to_json) } }
#       end
#       ws.onclose do
#         warn("websocket closed")
#         settings.sockets.delete(ws)
#       end
#     end
#   end
# end

String.class_eval do
  def join
    self
  end
end

class HelloApp < Sinatra::Base
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
          ws.send({type: "msg", msg: "Hello World!"}.to_json)
          settings.sockets << ws
        end
        ws.onmessage do |msg|
          EM.next_tick { settings.sockets.each{|s| s.send(msg) } }
          EM.next_tick { settings.sockets.each{|s| s.send({type: "location", lat:  -33.890542, lon: 151.274856}.to_json) } }
        end
        ws.onclose do
          warn("websocket closed")
          settings.sockets.delete(ws)
        end
      end
    end
  end

end

# start the application
run app: HelloApp.new

#PUBLISH locations {"lat": -33.890542, "lon": 151.274856}

