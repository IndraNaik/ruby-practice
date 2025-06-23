def add(a, b)
  a + b 
end

# default parameter example
def greet(name = "World")
  "Hello, #{name}!"
end

def sum(*numbers)
  numbers.sum
end

puts sum(1, 2, 3, 4)


def test (t1 = "Indra", t2 = "Bob")
  puts "Hello #{t1} and #{t2}"
end
test "Naik", "Agent"
test


def try
   i = 100
   j = 10
   k = 0
return i, j, k
end
var = try
puts "The values are: #{var}"


# variable number of parameters example
def variable_params(*testing)
  puts "Number of parameters: #{testing.length}"
  for i in 0...testing.length
    puts "Parameter #{i + 1}: #{testing[i]}"
  end
end
variable_params "Indra", "24", "M"
variable_params "Bob", "30", "M"