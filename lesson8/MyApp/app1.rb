# encoding: cp866
x = rand(1..100)
t = 10
1.upto(t) do |i|
	print "Я загадал число от 1 до 100, угадай какое? Попытка #{i}, осталось #{t-i+1}  "
	y = gets.to_i

	if x == y
		puts "Угадал, молодец! "
		break
	elsif x > y
		puts "Нет, больше"
		puts
	else
		puts "Нет, меньше"
		puts
	end
end
	 