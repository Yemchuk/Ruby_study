pb = Hash.new()
loop do

	print 'Enter name (Enter to stop): '
	name = gets.strip.capitalize
	if name == ''
		break
	end

	print 'Enter number: '
	number = gets.strip.to_i
	pb[name] = number

end 	

pb.each{|key,value| puts "#{key} = #{value}" }