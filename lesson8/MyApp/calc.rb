# encoding: cp866
print "������ �: "
a = gets.to_f
print "������ �: "
b = gets.to_f

print "�� �㤥� ������? (+ - * /) "
s = gets.strip

if s == "/" && b == 0
	puts "�� ���� ������ �����"
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

puts "�������: #{result}"
