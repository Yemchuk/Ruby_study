
dict = {'dog'=>['собака', 'пес'], 'cat'=>['кошка', 'кот'], 'girl'=>['девушка', 'девочка', 'молодая женщина']}

x = 0
dict.each_value do |val|
	x = x + val.size	
end

puts "Количество значений = #{x}"

dict['dog'].push "Archibalt"

puts dict['dog']

x = 0
dict.each_value do |val|
	x = x + val.size	
end

puts "Количество значений = #{x}"