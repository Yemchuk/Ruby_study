# encoding: cp866

print 'Введите строку: '
str = gets.chomp

1.upto(10) do |i|
        print " #{i}="
	str.size.times do |x|
    print str[x]
    d = (1 + rand(30)).to_f / 100
    sleep d
    print '-'
  end
end