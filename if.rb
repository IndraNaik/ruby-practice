$debug = 1
print "debug\n" if $debug
print "debug\n" if $debug == 1

# if-else statements
# Ruby program to demonstrate the use of if-else statements
# If-else statements are used to execute a block of code based on a condition.
# If the condition is true, the code inside the if block is executed.
# If the condition is false, the code inside the else block is executed.
# If-else statements can also be used to check multiple conditions using elsif.

# Example of if-else statement
puts "Enter a number: "
a = gets.chomp.to_i
if a > 10
    puts "a is greater than 10"
else
    puts "a is not greater than 10"
end

# Example of if-elsif-else statement
# If-elsif-else statements are used to check multiple conditions.
# The first condition that evaluates to true will execute its corresponding block of code.
# If none of the conditions are true, the else block is executed. 
# Example of if-elsif-else statement

print "Enter a number: "
a = gets.chomp.to_i
if a > 3
    puts "a is greater than 3"
elsif a == 3
    puts "a is equal to 3"
elsif a < 3
    puts "a is less than 3"
else
    puts "a is something else"
end

# Example of nested if statement
# Nested if statements are used to check conditions within another if statement.
# The inner if statement is executed only if the outer if condition is true.

if a > 0
    puts "a is positive"
    if a > 5
        puts "a is greater than 5"
    else
        puts "a is less than or equal to 5"
    end
else
    puts "a is not positive"
end

# Using unless statement
# Unless statements are the opposite of if statements.
# The code inside the unless block is executed only if the condition is false.

unless a < 5
    puts "a is not less than 5"
else
    puts "a is less than 5"
end
# Using ternary operator
puts a > 3 ? "a is greater than 3" : "a is not greater than 3"

# Using case statement
case a
when 1
    puts "a is one"
when 2
    puts "a is two"
when 3
    puts "a is three"
else
    puts "a is something else"
end

# Using unless statement
unless a < 3
    puts "a is not less than 3"
else
    puts "a is less than 3"
end