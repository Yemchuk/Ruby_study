arr = %w[jak nik peter]

arr.each_with_index do |item, i|
   	puts "#{i+1}. #{item.capitalize} "
end