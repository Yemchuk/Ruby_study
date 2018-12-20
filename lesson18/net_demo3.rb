require 'net/http'
require 'uri'

uri = URI.parse 'http://localhost:4567'
responce = Net::HTTP.post_form(uri, :login => 'aaa',  :password => 'bbb').body
puts responce.include? "again"