# encoding: cp866
print "Введите А: "
a = gets.to_f
print "Введите Б: "
b = gets.to_f

print "Что будем делать? (+ - * /) "
s = gets.strip

if s == "/" && b == 0
	puts "На ноль делить нельзя"
	exit
end

result = 0

if s == "+" 
	result = a + b
end

if s == "-" 
	result = a - b
end

if s == "*" 
	result = a * b
end

if s == "/" 
	result = a / b
end

puts "Результат: #{result}"
