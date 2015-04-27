#!/usr/bin/env ruby

require 'bundler/setup'
Bundler.require(:default)
require 'json'
require './sample_location'


redis = Redis.new(:driver => :hiredis)
30.times do
  p loc = sample_location.to_json
  redis.publish("locations", loc)
  sleep(0.1)
end
