 dict = {'dog'=>['собака', 'пес'], 'cat'=>['кошка', 'кот'], 'girl'=>['девушка', 'девочка', 'молодая женщина']}
print 'Введите слово: '

w = gets.chomp

if dict.has_value? ['пес']
	puts "пес - это значение"
end

if dict.has_key? w
	puts "#{w} - это ключ!"
end
