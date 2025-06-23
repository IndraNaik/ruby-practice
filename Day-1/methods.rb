def greet(name)
  "Hello, #{name}!"
end
puts greet ("Indra")


# Instance method example
class Test
  def initialize(name)
    @name = name
  end
  
  def greet
    "I am #{@name}!"
  end
end

t = Test.new("Bob")
puts t.greet

# class method example
class Test2
  def self.greet(name)
    "Hello, #{name}!"
  end
end

puts Test2.greet("Alice")

# Module method example
module Test3
  def self.greet(name)
    "Hello from module, #{name}!"
  end
end

puts Test3.greet("Charlie")