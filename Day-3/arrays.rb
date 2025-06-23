name = Array.new(5)
name[0] = 'Indra'
name[1] = 'Naik'
name[2] = 'is a'
name[3] = 'Cloud Engineer'
name[4] = 'and Software Developer'
puts "#{name[0]} #{name[1]} #{name[2]} #{name[3]} #{name[4]}"

puts "---------------------------------------------------"

name1 = Array.new(5, 'Indra')
puts "#{name1}"

puts "---------------------------------------------------"

# Array with different data types
mixed_array = [1, 'Indra', 3.14, true, nil]
puts "Mixed Array: #{mixed_array}"

puts "---------------------------------------------------"


nums = Array.[](1, 2, 3, 4,5)
puts "Array using Array.[]: #{nums}"

puts "---------------------------------------------------"  

nums2 = Array[1, 2, 3, 4, 5]
puts "Array using Array[]: #{nums2}"

puts "---------------------------------------------------"  

nums3 = Array(1..5)
puts "Array using Array(1..5): #{nums3}"
puts "---------------------------------------------------"


#Array Built-in Methods
digits = Array(0..9)
num = digits.at(6)
puts "#{num}"

puts "---------------------------------------------------"


#Array pack Directive
a = ["a", "b", "c"]
n = [65, 66, 67]
puts a.pack("A3A3A3")
puts a.pack("a3a3a3")
puts n.pack("ccc")