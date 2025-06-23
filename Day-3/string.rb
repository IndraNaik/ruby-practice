'This is a simple Ruby string literal'
puts 'This \ is \ a \ simple \ Ruby \string \ literal'


puts "---------------------------------------------------"

# Expression Substitution
name = 'Indra'
puts "Hello #{name}!"

puts "---------------------------------------------------"

x, y, z = 1, 2, 3
puts "The values are: #{x}, #{y}, and #{z}."
puts "The sum of x and y is: #{x + y}."
puts "The sum of x, y, and z is: #{x + y + z}."
puts "The difference between x and y is: #{x - y}."
puts "The difference between z and y is: #{z - y}."
puts "The product of x and y is: #{x * y}."
puts "The product of x, y, and z is: #{x * y * z}."

puts "---------------------------------------------------"

# General Delimited String
puts %q{This is a general delimited string. It can contain 'single quotes' and "double quotes" without escaping them.}
puts %Q{Indra is a Cloud Engineer.} " Indra is a Software Developer."

puts "---------------------------------------------------"

# String Concatenation
greeting = 'Hello'
greeting += ' World!'
puts greeting

puts "---------------------------------------------------"

# String Interpolation
age = 25
puts "I am #{age} years old."

puts "---------------------------------------------------"


# Multiline String
multiline_string = <<~TEXT
  This is a multiline string.
  It can span multiple lines.
  You can use it to write longer text without worrying about line breaks.
TEXT
puts multiline_string

puts "---------------------------------------------------"

# String Methods
puts "Length of greeting: #{greeting.length}"
puts "Uppercase greeting: #{greeting.upcase}"
puts "Lowercase greeting: #{greeting.downcase}"
puts "Reversed greeting: #{greeting.reverse}"
puts "Greeting includes 'World': #{greeting.include?('World')}"
puts "Greeting starts with 'Hello': #{greeting.start_with?('Hello')}"
puts "Greeting ends with '!': #{greeting.end_with?('!')}"

puts "---------------------------------------------------"

my_string = String.new("Hey Indra!")
foo = my_string.downcase
puts "Downcased string: #{foo}"
puts "Uppercased string: #{my_string.upcase}" 
puts "String length: #{my_string.length}"
puts "String class: #{my_string.class}"
puts "Original string: #{my_string}"