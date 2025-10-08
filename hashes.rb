# Creating Hashes
puts "Creating Hashes"

my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}
puts my_hash



my_hash = Hash.new
my_hash               #=> {}



hash = { 9 => "nine", :six => 6 }



# Accessing Values
puts "\nAccessing Values"

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}
shoes["summer"]   #=> "sandals"
shoes["hiking"]   #=> nil
shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"
shoes.fetch("hiking", "hiking boots") #=> "hiking boots"



# Adding and changing data
puts "\nAdding and changing data"

shoes["fall"] = "sneakers"
shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}
shoes["summer"] = "flip-flops"
shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}



# Removing data
puts "\nRemoving data"

shoes.delete("summer")    #=> "flip-flops"
shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}



# Methods
puts "\nMethods"

books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]



# Merging two hashes
puts "\nMerging two hashes"

hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }



# Symbols as hash keys
puts "\nSymbols as hash keys"

# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

american_cars[:ford]    #=> "Mustang"
japanese_cars[:honda]   #=> "Accord"