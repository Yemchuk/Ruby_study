# encoding: cp866
print "����쪮 ��� ���? "
age = gets.to_i
print "���� �������? (Y/N) "
answer = gets.strip.capitalize

if age >= 18 && answer == "Y"

	puts "���� ����ࠥ�!)"
	money = 100

	1000.times do

		puts "������ Enter �⮡� ������ ����"
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
			puts "��� ������ ���㫥�!"
	   		money = 0
		end

		if x == 1 && y == 1 && z == 1
			puts "��� ���᫥�� $10"
			money = money + 10
		end
		
       		if x == 2 && y == 2 && z == 2
			puts "��� ���᫥�� $10"
			money = money + 10
		end

		if x == 3 && y == 3 && z == 3
			puts "��� ���᫥�� $10"
			money = money + 10
		end

		if x == 4 && y == 4 && z == 4
			puts "��� ���᫥�� $10"
			money = money + 10
		end

		if x == 5 && y == 5 && z == 5
			puts "��� ���᫥�� $10"
			money = money + 10
		end

		if x == 6 && y == 6 && z == 6
			puts "�� ����﫨 ��������"
			money = money / 2
		end

		if x == 7 && y == 7 && z == 7
			puts "�� ����﫨 $70"
			money = money - 70
		end

		if x == 8 && y == 8 && z == 8
			puts "�� ����﫨 $80"
			money = money - 80
		end

		if x == 9 && y == 9 && z == 9
			puts "�� ����﫨 $90"
			money = money - 90
		end

		if x == 1 && y == 2 && z == 3
			puts "�� ����﫨 $123"
			money = money - 123
		end

		if x >= 2 && y == 1 && z >= 7
			puts "�� �먣ࠫ� $100"
			money = money + 100
		end


	puts "��⠫��� �����: $#{money} "

	end
end