# encoding: cp866
x = rand(1..100)
t = 10
1.upto(t) do |i|
	print "� ������� �᫮ �� 1 �� 100, 㣠��� �����? ����⪠ #{i}, ��⠫��� #{t-i+1}  "
	y = gets.to_i

	if x == y
		puts "������, �������! "
		break
	elsif x > y
		puts "���, �����"
		puts
	else
		puts "���, �����"
		puts
	end
end
	 