#encoding: cp866

loop do
	dict = {'dog'=>['собака', 'пес'], 'cat'=>['кошка', 'кот'], 'girl'=>['девушка', 'девочка', 'молодая женщина']}
	print 'Введите слово: '
	word = gets.strip
	if word == ''
		break
	end
	trans = dict[word]
	puts "Количество переводов: #{trans.size}"
	puts trans	

	

end
