arr = %w[Tim Jak Leya Vasya Peter Oleh]
arr.each_with_index do |v,i|
	puts "#{i+1}. #{v}"
end