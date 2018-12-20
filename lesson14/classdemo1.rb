class Animal

	def run
		@name = 'Archi'
		puts "#{@name} is running"
	end

	def stop
		puts "#{@name} is stop"
	end

end

a = Animal.new
a.run
a.stop
