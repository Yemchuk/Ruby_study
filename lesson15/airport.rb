class Airport
	attr_reader :name
	attr_reader :planes

	def initialize(name)
		@name = name
		@planes = []
	end

	def add_plane plane
		@planes << plane
	end
end

class Plane
	attr_reader :model

	def initialize(model)
		@model = model
	end
end

class Country
	attr_reader :name
	attr_reader :airports

	def initialize(name)
		@name = name
		@airports = []
	end

	def add_airports airport
		@airports << airport
	end
end


# airports creation

country = Country.new 'Russia'

airports = []

airport1 = Airport.new 'SVO'
airport2 = Airport.new 'DME'

country.add_airports airport1
country.add_airports airport2

# adding to arr airports

airports << airport1
airports << airport2

# create planes for 1 airport

plane1 = Plane.new 'Boeing-777'
plane2 = Plane.new 'A-320'
plane3 = Plane.new 'IL-76'

# add to 1 airport

airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

# create planes for 2 airport

plane_a = Plane.new 'AA1'
plane_b = Plane.new 'BB1'
plane_c = Plane.new 'CC1'

# add planes to 2 airport

airport2.add_plane plane_a
airport2.add_plane plane_b
airport2.add_plane plane_c

airports.each do |airport|
	# show airport name
	puts "Airport: #{airport.name}"

	# show planes in this airport
	airport.planes.each do |plane|
		puts "Plane: #{plane.model}"
	end
end
