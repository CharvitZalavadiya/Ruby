puts "Declaring a variable"

age = 18 #=> 18
puts age

age = 18 + 5 #=> 23
puts age

age = 18
age += 4 #=> 22
puts age

age = 18
age -= 2  #=> 16
puts age

cash = 10
cash *= 2 #=> 20
puts cash

temperature = 40
temperature /= 10 #=> 4
puts temperature



puts "\nVariables are references"

desired_location = "Barcelona"
johns_location = desired_location
puts desired_location  #=> "Barcelona"
puts johns_location    #=> "Barcelona"

johns_location.upcase!  #=> "BARCELONA"
puts desired_location        #=> "BARCELONA"
puts johns_location          #=> "BARCELONA"