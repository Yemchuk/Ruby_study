# encoding: cp866

print "����쪮 ��� �㤥� ������: "
x = gets.to_i

print "����� �㬬� �㤥� �⪫��뢠�� � �����: "
n = gets.to_f

s = 0

1.upto(x) do |y|
	1.upto(12) do |mm|
		s = s + n
   		puts "- ��� #{y} ����� #{mm}, �⫮����: #{s}"
	end
end