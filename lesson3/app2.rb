# encoding: cp866
print "Сколько раз будем играть?  "
x = gets.to_i

print "Введите Ваше любимое число: "
f = gets.to_i

1.upto(x) do |i|
	print "Играем #{i} раз и "
	y = rand(1..50)
	print "Вам выпало #{y} \n"
	if y == f
		puts "-=<YOU ARE WINNER!!!>=-"
		break
	end
end