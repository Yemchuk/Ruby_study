# encoding: cp866
print "Сколько гостей к Вам прийдет? "
n = gets.to_i

if n < 0 
	puts "Ошибка!"
	exit
end

if n == 1 
	puts "Придет один"
end

if n == 2 
	puts "Придет двое"
end

if n >= 3
	puts "Будет много гостей"
end
 