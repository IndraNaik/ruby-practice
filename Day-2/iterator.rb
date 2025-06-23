ary = [1, 2, 3, 4, 5]
ary.each do |i|
  puts i
end

puts "------------------------" 

a = [1,2,3,4,5]
b = Array.new
b = a.collect{|x| x * 2}
puts b

puts "------------------------" 

squares = [1, 2, 3, 4, 5].map { |x| x * x }
puts squares.inspect

puts "------------------------"

squares = [1, 2, 3, 4, 5].each_with_object([]) { |x, arr| arr << x * x }
puts squares.inspect
puts "------------------------"

evens = [1, 2, 3, 4, 5].select { |x| x.even? }
puts evens.inspect

puts "------------------------"

odds = [1, 2, 3, 4, 5].reject { |x| x.even? }
puts odds.inspect

puts "------------------------"

num = [1, 2, 3, 4, 5].find { |n| n > 4 }
puts num.inspect

puts "------------------------"

sum = [1, 2, 3, 4, 5].reduce(0) { |sum, n| sum + n }
puts sum.inspect

puts "------------------------"

[1, 2, 3, 4, 5].each_with_index do |value, index|
  puts "Index: #{index}, Value: #{value}"
end