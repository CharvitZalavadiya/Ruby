# Traditional Method
puts "Traditional Method"

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []
for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end
puts invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]



# Using Enumerable select
puts "\nUsing Enumerable select"

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.select { |friend| friend != 'Brian' }       #=> ["Sharon", "Leo", "Leila", "Arun"]



# Using Enumerable reject
puts "\nUsing Enumerable reject"

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.reject { |friend| friend == 'Brian' }       #=> ["Sharon", "Leo", "Leila", "Arun"]



# each Method
puts "\neach Method"

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| puts "Hello, " + friend }
#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun
#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"]

my_array = [1, 2]
my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end
#=> The new number is 2.
#=> The new number is 4.
#=> [1, 2]

my_hash = { "one" => 1, "two" => 2 }
my_hash.each { |key, value| puts "#{key} is #{value}" }
#=> one is 1
#=> two is 2
#=> { "one" => 1, "two" => 2}

my_hash.each { |pair| puts "the pair is #{pair}" }
#=> the pair is ["one", 1]
#=> the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}



# The each_with_index method
puts "\nThe each_with_index method"

fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.each_with_index { |fruit, index| puts fruit if index.even? }
#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]



# The map Method
puts "\nThe map Method"

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]



# The select Method
puts "\nThe select Method"

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |person, response| response == 'yes'}
#=> {"Sharon"=>"yes", "Arun"=>"yes"}



# The Reduce Method
puts "\nThe Reduce Method"

my_numbers = [5, 6, 7, 8]
my_numbers.reduce { |sum, number| sum + number }    #=> 26

my_numbers = [5, 6, 7, 8]
my_numbers.reduce(1000) { |sum, number| sum + number }  #=> 1026 (1000 is the initial value)

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]
votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end     #=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}



# The reject Method
puts "\nThe reject Method"

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.reject { |friend| friend == 'Brian' }   #=> ["Sharon", "Leo", "Leila", "Arun"]



# The bang Method
puts "\nThe bang Method"

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map! { |friend| friend.upcase }     #=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
puts friends        #=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`


