# Ruby program to demonstrate the use of instance variables
# and instance methods in a class
# Instance variables are variables that are accessible only within the instance of a class.
# They are prefixed with an '@' symbol.
# Instance methods are methods that operate on the instance variables of a class.
# They are defined using the 'def' keyword.

# Define a class
# The class is named Customer
# It has three instance variables: @cust_id, @cust_name, and @cust_addr
# It has an initialize method that sets these variables
# It has a display_details method that prints the details of the customer
class Customer
  @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end

   def total_no_of_customers()
      @@no_of_customers += 1
      puts "Total number of customers: #@@no_of_customers"
   end
   
   def +(other)
  puts "This is a custom addition method."
  Customer.new(
    "#{@cust_id}+#{other.instance_variable_get(:@cust_id)}",
    "#{@cust_name} & #{other.instance_variable_get(:@cust_name)}",
    "#{@cust_addr}, #{other.instance_variable_get(:@cust_addr)}"
  )
end
end

# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

combined_customer = cust1 + cust2
combined_customer.display_details
# Call Methods
cust1.display_details()
cust2.display_details()

# Call Methods
cust1.total_no_of_customers()
cust2.total_no_of_customers()