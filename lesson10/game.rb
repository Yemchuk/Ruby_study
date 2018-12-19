arr = [:rock, :scissors, :paper]
while 2+2==4
	1.upto(3) do |i|
		puts "#{i} - #{arr[i-1]}"
	end
	print "Please choose (1-3) or (4) to exit: "
	x = gets.to_i
	a = arr[x-1]
	if x == 4
		exit
	end
	print "You choose #{a}"
	b = arr[rand(0..2)]
	print " and Robot choose ."
	15.times do
		print "."
		sleep 0.05
	end
	print "#{b}"
	if a == b
		puts " Try again! "
	elsif a == arr[0] && b == arr[1]
		puts " You are win !!! "
	elsif a == arr[2] && b == arr[0]
		puts " You are win !!! "
	elsif a == arr[1] && b == arr[2]
		puts " You are win !!! "
	else
		puts " Robot Win !!! "
	end 	
end
