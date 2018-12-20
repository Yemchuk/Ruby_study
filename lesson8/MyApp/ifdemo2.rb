# encoding: cp866
print "Хотите поиграть? (Y/N)"
a = gets.strip.capitalize

if a == "Y"
	puts "Ok lets play )"
elsif a == "N"
	puts "No game! "
else 	
	puts "Error =( "
end
	