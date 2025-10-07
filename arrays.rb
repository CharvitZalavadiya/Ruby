# Creating arrays
puts "Creating arrays"

num_array = [1, 2, 3, 4, 5]
print num_array
str_array = ["This", "is", "a", "small", "array"]
print str_array

puts Array.new               #=> []
puts Array.new(3)            #=> [nil, nil, nil]
puts Array.new(3, 7)         #=> [7, 7, 7]
puts Array.new(3, true)      #=> [true, true, true]



# Accessing array elements
puts "\n\nAccessing array elements"

str_array = ["This", "is", "a", "small", "array"]

puts str_array[0]            #=> "This"
puts str_array[1]            #=> "is"
puts str_array[4]            #=> "array"
puts str_array[-1]           #=> "array"
puts str_array[-2]           #=> "small"
puts str_array.first         #=> "This"
puts str_array.first(2)      #=> ["This", "is"]
puts str_array.last(2)       #=> ["small", "array"]



# Adding and removing elements
puts "\nAdding and removing elements"

num_array = [1, 2]
puts num_array.push(3, 4)      #=> [1, 2, 3, 4]
puts num_array << 5            #=> [1, 2, 3, 4, 5]
puts num_array.pop             #=> 5
puts num_array                 #=> [1, 2, 3, 4]
puts num_array.unshift(1)      #=> [1, 2, 3, 4]
puts num_array.shift           #=> 1
puts num_array                 #=> [2, 3, 4]
puts num_array.pop(3)          #=> [4, 5, 6]
puts num_array.shift(2)        #=> [1, 2]
puts num_array                 #=> [3]



# Adding and subtracting arrays
puts "\nAdding and subtracting arrays"

a = [1, 2, 3]
b = [3, 4, 5]

a + b         #=> returns [1, 2, 3, 3, 4, 5] but a is still [1, 2, 3]
print a
a.concat(b)   #=> returns [1, 2, 3, 3, 4, 5] and a is now [1, 2, 3, 3, 4, 5]
print a



# Basic Methods
puts "\nBasic Methods"

puts num_array.methods    #=> A very long list of methods

puts [].empty?               #=> true
puts [[]].empty?             #=> false
puts [1, 2].empty?           #=> false
puts [1, 2, 3].length        #=> 3
puts [1, 2, 3].reverse       #=> [3, 2, 1]
puts [1, 2, 3].include?(3)   #=> true
puts [1, 2, 3].include?("3") #=> false
puts [1, 2, 3].join          #=> "123"
puts [1, 2, 3].join("-")     #=> "1-2-3"