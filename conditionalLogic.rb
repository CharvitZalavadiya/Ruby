puts "Basic conditional logics"

if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end



puts "Hot diggity damn, 1 is less than 2" if 1 < 2


attack_by_land = true
if attack_by_land == true
  puts "release the goat"
else
  puts "release the shark"
end



if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the flying octopus "
end



puts 5 == 5 #=> true
puts 5 == 6 #=> false



puts 5 != 7 #=> true
puts 5 != 5 #=> false



puts 7 > 5 #=> true
puts 5 > 7 #=> false



puts 7 >= 7 #=> true
puts 7 >= 5 #=> true



puts 5 < 7 #=> true
puts 7 < 5 #=> false



puts 7 <= 7 #=> true
puts 7 <= 5 #=> true



puts 5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
puts 5.eql?(5)   #=> true



a = 5
b = 5
puts a.equal?(b) #=> true

a = "hello"
b = "hello"
puts a.equal?(b) #=> false



# <=> (spaceship operator) returns the following:
#     -1 if the value on the left is less than the value on the right;
#     0 if the value on the left is equal to the value on the right;
#     1 if the value on the left is greater than the value on the right.

puts 5 <=> 10    #=> -1
puts 10 <=> 10   #=> 0
puts 10 <=> 5    #=> 1



puts "\nLogical operators"

if 1 < 2 && 5 < 6
  puts "Party at Kevin's!"
end
# This can also be written as
if 1 < 2 and 5 < 6
  puts "Party at Kevin's!"
end



if 10 < 2 || 5 < 6
  puts "Party at Kevin's!"
end
# This can also be written as
if 10 < 2 or 5 < 6
  puts "Party at Kevin's!"
end



if !false     #=> true
end

if !(10 < 5)  #=> true
end


puts "Case Statements"

grade = 'F'
did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end



grade = 'F'
case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end



puts "Unless Statements"

age = 19
unless age < 18
  puts "Get a job."
end



age = 19
puts "Welcome to a life of debt." unless age < 18



unless age < 18
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end



puts "Ternary Operator"

age = 19
response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."