#encoding: cp866
dict = {'dog'=>'ᮡ���', 'cat'=>'��誠', 'girl'=> '����誠'}
loop do
	
	print '������ ᫮��: '
	word = gets.strip
	if word == ''
		break
	end
	trans = dict[word]
	puts "Translation: #{trans}"	

end
