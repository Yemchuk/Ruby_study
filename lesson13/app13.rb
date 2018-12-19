@hh = Hash.new

def add_person options
#add pair to hash
	puts "Alredy in list!" if @hh[options[:name]]
	@hh[options[:name]] = options[:age]
end

def show_hash
#show has
	@hh.keys.each do |key|
		age = @hh[key]
		puts "Name: #{key}, age: #{age}"
	end
end

loop do
# add untill enter the space
	print 'Enter name: '
	name = gets.strip

	if name == ''
		show_hash
		exit
	end

	print 'Enter age: '
	age = gets.to_i

	#param= {:name => name, :age => age}

	add_person :name => name, :age => age
end