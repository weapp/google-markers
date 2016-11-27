#!/usr/bin/env ruby

require 'bundler/setup'
Bundler.require(:default)
require 'json'
require './sample_location'


def rnd
  (rand - 0.5) * 0.03 + (rand - 0.5) * 0.03 + (rand - 0.5) * 0.03
end

redis = Redis.new(:driver => :hiredis)
5000.times do
  loc = sample_location
  nw = {lat: loc[:lat] + rnd, lon: loc[:lon] + rnd}
  p loc = nw.to_json
  redis.publish("locations", loc)
  sleep(1)
end
