class Something
	def method_missing name
		puts "Calling unknow method #{name}"
	end
end

s = Something.new
puts s.asdasd