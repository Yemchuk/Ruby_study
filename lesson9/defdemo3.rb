#encoding: cp866

10.times do
	def get_command
		x = rand(1..4)
		if x == 1
			cmd = :left
		elsif x == 2
			cmd = :right

		elsif x == 3
			cmd = :up

		else x == 2
			cmd = :down
		end
	end

	command = get_command
	
	puts "Robot moves to #{command}"
end
