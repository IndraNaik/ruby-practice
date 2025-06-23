i = 0
while i < 4
  puts "i is #{i}"
  i += 1
end

puts "------------------------"

for i in 0..5
  puts "i is #{i}"
end

puts "------------------------"

for i in 0...5
  if i > 3 then
    break
  end
  puts "i is #{i}"
end

puts "------------------------"


for i in 0..5
  if i < 2 then
    next
  end
  puts "i is #{i}"
end

puts "------------------------"



# for i in 0..5
#   if i < 3 then
#     puts "i is #{i}"
#     redo
#   end
# end

# puts "------------------------"

# This will produce the following result and will go in an infinite loop 


