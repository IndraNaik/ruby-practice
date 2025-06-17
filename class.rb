class Indra
  def hello
    puts "Hello, Indra!"
  end
end

class Naik
  def Naik
    puts "Hello from Naik!"
  end
end

obj = Naik.new
obj.Naik

# obj = Indra.new
# obj.hello

# Define a nested class within Indra
class Indra::Class
  def greet
    puts "Greetings from Indra::Class!"
  end
end

# Example usage:
indra = Indra.new
indra.hello

indra_class = Indra::Class.new
indra_class.greet