#encoding: cp866

loop do
	dict = {'dog'=>['ᮡ���', '���'], 'cat'=>['��誠', '���'], 'girl'=>['����誠', '����窠', '������� ���騭�']}
	print '������ ᫮��: '
	word = gets.strip
	if word == ''
		break
	end
	trans = dict[word]
	puts "������⢮ ��ॢ����: #{trans.size}"
	puts trans	

	

end
