humans = %w[walter jak jessie jr linda]

while 2+2==4
	x = 1
	
	humans.each do |names|
		puts "#{x} #{names}"	
		x+=1
	end

	print "What number to delete? "
	n = gets.strip.to_i-1
	puts "#{humans[n]} was deleted"
	puts	
	humans.delete_at n	
	
	if humans.size == 0 
		exit
	end
end

