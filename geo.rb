#!/usr/bin/env ruby

require 'bundler/setup'
Bundler.require(:default)
require 'open-uri'



PRIVATE_IP = /(^127\.0\.0\.1)|
(^10\.)|
(^172\.1[6-9]\.)|(^172\.2[0-9]\.)|(^172\.3[0-1]\.)|
(^192\.168\.)/

module Geo
  module_function
  @db = GeoIP.new('GeoLiteCity.dat') if File.exist?('GeoLiteCity.dat')
  @external_ip = open('http://whatismyip.akamai.com').read

  def from(ip)
    return unless @db
    ip = @external_ip if ip =~ PRIVATE_IP
    city = @db.city(ip) rescue nil
    {lat: city.latitude, lon: city.longitude} if city
  end
end
