#!/usr/bin/env ruby

require 'net/http'
require 'json'

print 'Enter callsign: '
callsign = gets

url = "https://callook.info/#{ callsign.chomp }/json"
uri = URI(url)

response = Net::HTTP.get(uri)
data = JSON.parse(response)

status = data['status']

puts ""
if status == 'VALID'

  puts "Type: #{ data['type'] }"
  puts "Callsign: #{ data['current']['callsign'] }"
  puts "Class: #{ data['current']['operClass'] }"

  puts ""

  puts data['name']
  address = data['address']
  address.keys.each{ |line| puts address[line] }

  info = data['otherInfo']
  puts "Effective: #{ info['grantDate'] }"
  puts "Expires: #{ info['expiryDate'] }"
  puts "FCC ULS lookup: #{ info['ulsUrl'] }"
else
  puts status
end
