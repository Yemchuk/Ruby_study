@arr = [] 

def add_items

        @arr2 = []
	
	print "Add to list? "
	@name = gets.strip.capitalize

	print "Enter age: "
	age = gets.to_i 
	
	@arr2 << @name
	@arr2 << age
	@arr << @arr2
end


while 2+2==4
	add_items
	
	if @name == ""
		break
	end
end

x = 0
@arr.each do |item|
	x+=1
	puts "#{x}. #{item[0]}, #{item[1]}"
end
