class Book

	attr_accessor :last_person

	def initialize
		@hh = Hash.new
		@last_person = ''
	end

	def add_person options
		@last_person = options[:name]
	#add pair to hash
		puts "Alredy in list!" if @hh[options[:name]]
		@hh[options[:name]] = options[:age]
		
	end

	def show_all
	#show has
		@hh.keys.each do |key|
			age = @hh[key]
			puts "Name: #{key}, age: #{age}"
		end
	end
end

b = Book.new
b.add_person :name => 'Walt', :age => 50
b.add_person :name => 'Jessie', :age => 40
b.add_person :name => 'Jak', :age => 32

b.show_all

puts "Last person: #{b.last_person}"