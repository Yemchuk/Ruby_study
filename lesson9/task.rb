#encoding: cp866
arr = []

while 2 + 2 == 4
	print "������ ��� ��� 梥� (��� stop ��� ��室�): "
	color = gets.strip
	
	
	if color == "stop"
		puts arr.uniq
		exit	
	end

	arr << color
	
end
