# encoding: cp866
print "Сколько Вам лет? "
age = gets.to_i
print "Хотите поиграть? (Y/N) "
answer = gets.strip.capitalize

if age >= 18 && answer == "Y"

	puts "Хорошо поиграем!)"
	money = 100

	1000.times do

		puts "Нажмите Enter чтобы дернуть ручку"
		gets
		
		x = rand(0..9)
	        y = rand(0..9)
		z = rand(0..9)

		10.times do 
			x1 = rand(0..9)
			print "#{x1}\r"
			sleep 0.1 
		end                 

                10.times do 
			y1 = rand(0..9)
			print "#{x}-#{y1}\r"
			sleep 0.1 
		end      

		10.times do 
			z1 = rand(0..9)
			print "#{x}-#{y}-#{z1}\r"
			sleep 0.1 
		end 

		print "#{x}-#{y}-#{z}\n"

		if x == 0 && y == 0 && z == 0
			puts "Ваш баланс обнулен!"
	   		money = 0
		end

		if x == 1 && y == 1 && z == 1
			puts "Вам зачислено $10"
			money = money + 10
		end
		
       		if x == 2 && y == 2 && z == 2
			puts "Вам зачислено $10"
			money = money + 10
		end

		if x == 3 && y == 3 && z == 3
			puts "Вам зачислено $10"
			money = money + 10
		end

		if x == 4 && y == 4 && z == 4
			puts "Вам зачислено $10"
			money = money + 10
		end

		if x == 5 && y == 5 && z == 5
			puts "Вам зачислено $10"
			money = money + 10
		end

		if x == 6 && y == 6 && z == 6
			puts "Вы потеряли половину"
			money = money / 2
		end

		if x == 7 && y == 7 && z == 7
			puts "Вы потеряли $70"
			money = money - 70
		end

		if x == 8 && y == 8 && z == 8
			puts "Вы потеряли $80"
			money = money - 80
		end

		if x == 9 && y == 9 && z == 9
			puts "Вы потеряли $90"
			money = money - 90
		end

		if x == 1 && y == 2 && z == 3
			puts "Вы потеряли $123"
			money = money - 123
		end

		if x >= 2 && y == 1 && z >= 7
			puts "Вы Выиграли $100"
			money = money + 100
		end


	puts "Осталось денег: $#{money} "

	end
end