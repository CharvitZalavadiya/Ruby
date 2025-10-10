# Creating a method
puts "Creating a method"

def my_name
  "Charvit Zalavadiya"
end
puts my_name    #=> "Charvit Zalavadiya"



# Method names
puts "\nMethod names"

method_name      # valid
_name_of_method  # valid
1_method_name    # invalid
method_27        # valid
method?_name     # invalid
method_name!     # valid
begin            # invalid (Ruby reserved word)
begin_count      # valid



# Parameters and arguments
puts "\nParameters and arguments"

def greet(name)
  "Hello, " + name + "!"
end
puts greet("John") #=> Hello, John!



def greet(name = "stranger")
  "Hello, " + name + "!"
end
puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!



# What methods return
puts "\nWhat methods return"

def my_name
  return "Joe Smith"
end
puts my_name #=> "Joe Smith"



def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end
puts even_odd(16) #=>  That is an even number.
puts even_odd(17) #=>  That is an odd number.



def my_name
  return "Joe Smith"
  "Jane Doe"
end
puts my_name #=> "Joe Smith"



def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end
puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.



def even_odd(number)
  unless number.is_a? Numeric
    "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end
puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  That is an odd number.



# Chaining methods
puts "\nChaining methods"

phrase = ["be", "to", "not", "or", "be", "to"]
puts phrase.reverse.join(" ").capitalize  #=> "To be or not to be"



result = ["be", "to", "not", "or", "be", "to"]
result = result.reverse
result = result.join(" ")
result = result.capitalize
puts result # Output: "To be or not to be"



# Predicate methods
puts "\nPredicate methods"

puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true
puts 12.between?(10, 15)  #=> true



# Bang methods
puts "\nBang methods"

whisper = "HELLO EVERYBODY"
puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"
puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"
