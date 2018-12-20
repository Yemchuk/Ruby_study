module Humans

	class Manager
		def say_hi
			puts 'Hello!'
		end
	end

	class Hipster
		def say_hi
			puts 'Hiiiiii, yo!'
		end
	end

	class Jessie_Pinkman
		def say_hi
			puts 'Hi, bitch!'
		end
	end

end

hipster = Humans::Hipster.new
hipster.say_hi

module Animals
	class Dog
		def bark
			puts 'Woof-woof'
		end
	end

	class Cat
		def meow
			puts 'Meeeooow!'
		end
	end
end

cat = Animals::Cat.new
cat.meow

dog = Animals::Dog.new
dog.bark