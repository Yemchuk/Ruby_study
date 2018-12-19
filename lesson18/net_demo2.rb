require 'net/http'
require 'uri'

uri = URI.parse 'http://rubyschool.us/router'
responce = Net::HTTP.get uri
puts responce