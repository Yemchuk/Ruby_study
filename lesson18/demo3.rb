def is_password_weak? password
	input = File.open "passwords.txt", "r"

	while (line = input.gets)
		line.strip!
			if line.include? password
					return true
				exit
			end
	end

	return false

end

print 'Enter password: '
my_password = gets.strip

if is_password_weak? my_password
	puts 'You password is weak'
else
	puts 'You password is not weak'
end