input = File.open "task.txt", "r"
total = 0
n = 0

6.times do 
	(line = input.gets)
	arr = line.split ","
	value = arr[1].to_i
	total = total + value
end

puts "Total: #{total}"

input.close