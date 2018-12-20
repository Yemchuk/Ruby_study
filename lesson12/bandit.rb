
hh = {111 => 10,
	222 => 22,
	333 => 33,
	444 => 44,
	555 => 55,
	666 => 66,
	777 => 10000,
	888 => 88,
	999 => 100}

balance = 100

loop do
	puts 'Press Enter to play... '
	gets

	a = rand(100..999)

	puts "Выпало: #{a}"

	#сравнение
	if hh[a]
		balance = balance + hh[a]
	elsif balance <= 0
		puts 'Вы проиграли!'
		exit
	elsif 		
		balance = balance - 5
		puts '- $5, Пробуй еще...'
	end

	puts "Your balance: $#{balance}"

end
