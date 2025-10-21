# Loop
puts "Loop"

i = 0
loop do
  puts "i = #{i}"
  i += 1
  break if i == 10
end



# While Loop
puts "\nWhile Loop"

i = 0
while i < 10 do
 puts "i = #{i}"
 i += 1
end



# Until Loop
puts "\nUntil Loop"

i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end



# Ranges

# (1..5)      #=> inclusive range: 1, 2, 3, 4, 5
# (1...5)     #=> exclusive range: 1, 2, 3, 4
# ('a'..'d')  #=> a, b, c, d



# For Loop
puts "\nFor Loop"

for i in 0..5
  puts "#{i} zombies incoming!"
end



# Each Loop
puts "\nEach Loop"

(0..5).each do |i|
  puts "#{i} zombies incoming!"
end



# Times Loop
puts "\nTimes Loop"

5.times do
  puts "Hello, world!"
end



# Upto & Downto Loop
puts "\nUpto Loop"
5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

puts "\nDownto Loop"
10.downto(5) { |num| print "#{num} " }   #=> 10 9 8 7 6 5
