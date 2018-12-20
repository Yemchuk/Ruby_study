#encoding: cp866
dict = {'dog'=>'собака', 'cat'=>'кошка', 'girl'=> 'девушка'}
loop do
	
	print 'Введите слово: '
	word = gets.strip
	if word == ''
		break
	end
	trans = dict[word]
	puts "Translation: #{trans}"	

end
