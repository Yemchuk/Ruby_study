#encoding: cp866

dict = {'dog'=>['собака', 'пес'], 'cat'=>['кошка', 'кот'], 'girl'=>['девушка', 'девочка', 'молодая женщина']}

i = 0
dict.each_value do |x|
	i = i + x.size
end	

puts i

a = dict['girl']

c = 0
a.each do |n|
	puts "Элемент #{c} = #{n}"
	c +=1
end

dict['dog'].push "Archi"

puts dict['dog']