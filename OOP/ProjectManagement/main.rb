require_relative 'lib/hotel'
require_relative 'lib/flight'


Hotel.new.intro
Flight.new.intro

# Both are having the same definition of food_opinion method
require_relative "lib/notSoGreen"
require_relative "lib/scheals"
puts food_opinion('pizza') #=> pizza is awful!
# Since food_opinion is defined twice, the last definition wins out.

puts NotSoGreen.food_opinion2('Cereal') #=> Cereal is awesome!
puts Scheals.food_opinion2('Marmite') #=> Marmite is awful!
puts food_opinion2('Cereal')  #=> Errors out—there's no longer a free floating food_opinion method to use.

