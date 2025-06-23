# Hash is a collection of key-value pairs.

ind = Hash.new "Weeks"
puts "ind: #{ind}"
puts "ind['Monday']: #{ind['Monday']}"
puts "ind['Tuesday']: #{ind['Tuesday']}"


puts "----------------------------------------------------"

months = Hash.new( "month" )

puts "#{months[0]}"
puts "#{months[72]}"

puts "----------------------------------------------------"

H = Hash.new { |hash, key| hash[key] = "default value for #{key}" }
puts H[:a] 
puts H[:b]
puts H[:c]

puts "----------------------------------------------------"

H1 = Hash["a" => 100, "b" => 200]
puts "#{H1['a']}"
puts "#{H1['b']}"
puts "#{H1['c']}"

puts "----------------------------------------------------" 
