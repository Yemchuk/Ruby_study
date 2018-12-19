print "enter password: "
my_password = gets.strip

input = File.open "passwords2.txt", "r"

while (line = input.gets)
	line.strip!
		if line.include? my_password
			puts "You passwords is weak"
			exit
		end
end

puts "You password is not weak"
