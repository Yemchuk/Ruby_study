# encoding: cp866
print "Вы довольны своей зп? Y/N "
answer = gets.chomp.strip.capitalize

if answer == "Y"
	puts "Very well!"
end                        
              
if answer == "N"
	puts "Very Bad!"
end