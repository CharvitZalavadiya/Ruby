# include? method
# This method will return true if the element you pass as an argument to #include? exists in the array or hash; otherwise, it will return false.
puts "include? method:"

numbers = [5, 6, 7, 8]
numbers.include?(6)     #=> true
numbers.include?(3)     #=> false



friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = friends.select { |friend| friend != 'Brian' }
invited_list.include?('Brian')      #=> false



# any? method
# It returns true if any elements in your array or hash match the condition within the block; otherwise, it will return false.
puts "\nany? method:"

numbers = [21, 42, 303, 499, 550, 811]
numbers.any? { |number| number > 500 }      #=> true
numbers.any? { |number| number < 20 }       #=> false



# all? method
# It only returns true if all the elements in your array or hash match the condition you set within the block; otherwise, it will return false.
# all? will return true by default
puts "\nall? method:"   

fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.all? { |fruit| fruit.length > 3 }        #=> true
fruits.all? { |fruit| fruit.length > 6 }        #=> false



# none? method
# It returns true only if none of the elements in your array or hash match the condition you set within the block; otherwise, it will return false.
puts "\nnone? method:"

numbers = [10, 20, 30, 40, 50]
numbers.none? { |number| number > 60 }      #=> true
numbers.none? { |number| number > 30 }      #=> false



# one? method
# It returns true if only one element in your array or hash matches the condition you set within the block; otherwise, it will return false.
puts "\none? method:"

numbers = [11, 22, 33, 44, 55]
numbers.one? { |number| number > 50 }       #=> true
numbers.one? { |number| number > 30 }       #=> false