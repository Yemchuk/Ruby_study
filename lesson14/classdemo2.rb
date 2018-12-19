class Airplane
	attr_reader :model
	attr_reader :altitude
	attr_reader :speed
	attr_reader :status

	def initialize(model)
		@model = model
		@speed = 0
		@altitude = 0
		@status = 'Standby'
	end

	def fly
		@speed = 800
		@altitude = 1000
		@status = 'Fly'
	end

	def land
		@speed = 0
		@altitude = 0
		@status = 'Land'
	end

	def moving?
		@speed > 0
	end

end

models = ['Airbus-320', 'Boeining-777', 'IL-86']
planes = []

100.times do
	model = models[rand(0..2)]	
	plane = Airplane.new(model)
	
	if rand(0..1) == 1
		plane.fly
	end
	
	planes << plane

end

planes.each do |plane|
	puts "Model: #{plane.model}, Status: #{plane.status}, Speed: #{plane.speed}, Alt: #{plane.altitude},"
	puts "Is moving: #{plane.moving?}"
end