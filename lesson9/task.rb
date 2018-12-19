#encoding: cp866
arr = []

while 2 + 2 == 4
	print "ВВедите Ваш любимый цвет (или stop для выхода): "
	color = gets.strip
	
	
	if color == "stop"
		puts arr.uniq
		exit	
	end

	arr << color
	
end
