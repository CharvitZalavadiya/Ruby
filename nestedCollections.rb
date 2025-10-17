# Nested Arrays
puts "Nested Arrays:"

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]
teacher_mailboxes[0][0]   #=> "Adams"
teacher_mailboxes[1][0]   #=> "Jones"
teacher_mailboxes[2][0]   #=> "Perez"
teacher_mailboxes[0][-1]  #=> "Davis"
teacher_mailboxes[-1][0]  #=> "Perez"
teacher_mailboxes[-1][-2] #=> "Smith"
teacher_mailboxes[3][0]   #=> NoMethodError
teacher_mailboxes[0][4]   #=> nil



# Creating a new nested array
puts "\nCreating a new nested array:"

mutable = Array.new(3, Array.new(2))    #=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000    #=> 1000
puts mutable   #=> [[1000, nil], [1000, nil], [1000, nil]]



nested_arrays = Array.new(3) { Array.new(2) }   #=> [[nil, nil], [nil, nil], [nil, nil]]
nested_arrays[0][0] = 1000    #=> 1000
puts nested_arrays     #=> [[1000, nil], [nil, nil], [nil, nil]]



# Adding and removing elements
puts "\nAdding and removing elements:"

test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

test_scores << [100, 99, 98, 97]  #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)  #=> [97, 76, 79, 93, 100]
puts test_scores #=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]



test_scores.pop     #=> [100, 99, 98, 97]
test_scores[0].pop  #=> 100
puts test_scores    #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]



# Iterating over a nested array
puts "\nIterating over a nested array:"

teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end



teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end



teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} is amazing!"
end



# Nested Hashes
puts "\nNested Hashes:"

vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}



# Accessing data
puts ("\nAccessing data:")

vehicles[:alice][:year]   #=> 2019
vehicles[:blake][:make]   #=> "Volkswagen"
vehicles[:caleb][:model]  #=> "Accord"
vehicles[:zoe][:year]     #=> NoMethodError
vehicles.dig(:zoe, :year) #=> nil
vehicles[:alice][:color]  #=> nil
vehicles.dig(:alice, :color)  #=> nil



# Adding and removing data
puts "\nAdding and removing data:"

vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"} #=> {:year=>2021, :make=>"Ford", :model=>"Escape"}
puts vehicles



vehicles[:dave][:color] = "red" #=> "red"
puts vehicles



vehicles.delete(:blake) #=> {:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}
puts vehicles



vehicles[:dave].delete(:color)  #=> "red"
puts vehicles



# Methods
puts "\nMethods:"

vehicles.select { |name, data| data[:year] >= 2020 }
#=> {:caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}



vehicles.collect { |name, data| name if data[:year] >= 2020 } #=> [nil, :caleb, :dave]



vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact #=> [:caleb, :dave]



vehicles.filter_map { |name, data| name if data[:year] >= 2020 }  #=> [:caleb, :dave]