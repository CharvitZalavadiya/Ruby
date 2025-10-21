# Numbers

puts "\nAddition"
puts 1 + 1   #=> 2

puts "\nSubtraction"
puts 2 - 1   #=> 1

puts "\nMultiplication"
puts 2 * 2   #=> 4

puts "\nDivision"
puts 10 / 5  #=> 2

puts "\nExponent"
puts 2 ** 2  #=> 4
puts 3 ** 4  #=> 81

puts "\nModulus (find the remainder of division)"
puts 8 % 2   #=> 0  (8 / 2 = 4; no remainder)
puts 10 % 4  #=> 2  (10 / 4 = 2 with a remainder of 2)

puts "\nInteger vs. Float Division"
puts 17 / 5    #=> 3, not 3.4
puts 17 / 5.0  #=> 3.4

puts "\nTo convert an integer to a float"
puts 13.to_f   #=> 13.0

puts "\nTo convert a float to an integer"
puts 13.0.to_i #=> 13
puts 13.9.to_i #=> 13

puts "\nEven and Odd"
puts 6.even? #=> true
puts 7.even? #=> false
puts 6.odd? #=> false
puts 7.odd? #=> true

# Strings

puts "\nWith the plus operator"
puts "Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

puts "\nWith the shovel operator"
puts "Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

puts "\nWith the concat method"
puts "Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"



puts "\nSubStrings"
puts "hello"[0]      #=> "h"
puts "hello"[0..1]   #=> "he"
puts "hello"[0, 4]   #=> "hell"
puts "hello"[-1]     #=> "o"



# Escape characters
puts "\nEscape Characters"

=begin
    \\  #=> Need a backslash in your string?
    \b  #=> Backspace
    \r  #=> Carriage return, for those of you that love typewriters
    \n  #=> Newline. You'll likely use this one the most.
    \s  #=> Space
    \t  #=> Tab
    \"  #=> Double quotation mark
    \'  #=> Single quotation mark
=end



puts "\nString Interpolation"
name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"



puts "\nCommon string methods"

puts "hello".capitalize #=> "Hello"
puts "hello".include?("lo")  #=> true
puts "hello".include?("z")   #=> false
puts "hello".upcase  #=> "HELLO"
puts "Hello".downcase  #=> "hello"
puts "hello".empty?  #=> false
puts "".empty?       #=> true
puts "hello".length  #=> 5
puts "hello".reverse  #=> "olleh"
puts "hello world".split  #=> ["hello", "world"]
puts "hello".split("")    #=> ["h", "e", "l", "l", "o"]
puts " hello, world   ".strip  #=> "hello, world"
puts "he77o".sub("7", "l")           #=> "hel7o"
puts "he77o".gsub("7", "l")          #=> "hello"
puts "hello".insert(-1, " dude")     #=> "hello dude"
puts "hello world".delete("l")       #=> "heo word"
puts "!".prepend("hello, ", "world") #=> "hello, world!"



puts "\nConverting other objects to strings"

puts 5.to_s        #=> "5"
puts nil.to_s      #=> ""
puts :symbol.to_s  #=> "symbol"



puts "\n Symbols"
:my_symbol

puts "string" == "string"  #=> true
puts "string".object_id == "string".object_id  #=> false
puts :symbol.object_id == :symbol.object_id    #=> true

