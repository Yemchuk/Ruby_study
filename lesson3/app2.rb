# encoding: cp866
print "����쪮 ࠧ �㤥� �����?  "
x = gets.to_i

print "������ ��� ���� �᫮: "
f = gets.to_i

1.upto(x) do |i|
	print "��ࠥ� #{i} ࠧ � "
	y = rand(1..50)
	print "��� �믠�� #{y} \n"
	if y == f
		puts "-=<YOU ARE WINNER!!!>=-"
		break
	end
end