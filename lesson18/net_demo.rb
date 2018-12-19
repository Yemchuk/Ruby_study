require 'net/http'

responce = Net::HTTP.get 'rutracker.org','/forum'
puts responce