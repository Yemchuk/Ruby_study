require 'net/http'
require 'uri'
                                              
def is_wrong_password? password
	uri = URI.parse 'http://192.168.1.1/cgi-bin/luci'
	responce = Net::HTTP.post_form(uri, :luci_username => 'root',  :luci_password => password).body
	responce.include? "Invalid"
	#puts responce
end

puts is_wrong_password? "876543210"