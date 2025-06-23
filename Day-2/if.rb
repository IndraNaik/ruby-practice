$debug = 1
print "debug\n" if $debug
print "debug\n" if $debug == 1

# Example of if-else statement
puts "Enter a number: "
input = gets&.chomp

# Safe conversion to integer (default to nil if input is not valid)
a = input&.to_i

# Validate input
if input.nil? || input.strip.empty? || input !~ /^-?\d+$/
  puts "Invalid input, please enter a valid number."
else
  # a is already safely converted using .to_i above

  # Using if-elsif-else statement
  if a > 10
    puts "a is greater than 10"
  elsif a < 10
    puts "a is not greater than 10"
  else
    puts "a is exactly 10"
  end

  # Another number input
  print "Enter another number: "
  b = gets&.chomp&.to_i

  # if-elsif-else statement
  if b > 3
    puts "b is greater than 3"
  elsif b == 3
    puts "b is equal to 3"
  elsif b < 3
    puts "b is less than 3"
  else
    puts "b is something else"
  end

  # Nested if
  if b > 0
    puts "b is positive"
    if b > 5
      puts "b is greater than 5"
    else
      puts "b is less than or equal to 5"
    end
  else
    puts "b is not positive"
  end

  # Unless statement
  unless b < 5
    puts "b is not less than 5"
  else
    puts "b is less than 5"
  end

  # Ternary operator
  puts b > 3 ? "b is greater than 3" : "b is not greater than 3"

  # Case statement
  case b
  when 1
    puts "b is one"
  when 2
    puts "b is two"
  when 3
    puts "b is three"
  else
    puts "b is something else"
  end

  # Another unless example
  unless b < 3
    puts "b is not less than 3"
  else
    puts "b is less than 3"
  end
end
