arr = [:Rock, :Scissors, :Paper]
loop do	
	puts 'Lets play!!! '
	print '(R)ock, (S)cissors, (P)aper or (E)xit: '
	ch = gets.strip.capitalize

	if ch == 'R'
		user_choice = :Rock
	elsif ch == 'S'
		user_choice = :Scissors
	elsif ch == 'P'
		user_choice = :Paper
	elsif ch == 'E'
		exit
	end

	comp_choice = arr[rand(0..2)]

	puts "User has choose: #{user_choice}"
	puts "Robot has choose #{comp_choice}"

	combo = [
		#Draw
		[:Rock, :Rock, 'Draw!'],
		[:Scissors, :Scissors, 'Draw!'],
		[:Paper, :Paper, 'Draw!'],
		#Player wins
		[:Rock, :Scissors, 'Player wins!'],
		[:Scissors, :Paper, 'Player wins!'],
		[:Paper, :Rock, 'Player wins!'],
		#Robot wins
		[:Scissors, :Rock, 'Robot wins!'],
		[:Paper, :Scissors, 'Robot wins!'],
		[:Rock, :Paper, 'Robot wins!']
	]
	combo.each do |item|
		if user_choice == item[0] && item[1] == comp_choice
			puts item[2]
		end
	end			
end