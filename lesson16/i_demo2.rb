class Animal

	def initialize name
		@name = name
	end

	def run
		puts "#{@name} is Running..."
	end

	def jump
		eat
		puts "#{@name} is jumping.."
		sleep
	end

	private

	def eat
		puts 'I am eating'
	end

	def sleep
		puts 'I am sleep'
	end
end

class Dog < Animal
	
	def initialize
		super 'Archi'
	end

	def bark
		puts 'Woof-woof!'
		sleep
	end
end

dog = Dog.new
dog.run