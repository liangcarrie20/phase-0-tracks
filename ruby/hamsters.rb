puts "What is the hamster's name?"
name = gets.chomp
puts "How loud is the hamster on a scale from 1 to 10"
volume = gets.chomp.to_i
puts "What color is the hamster's fur?"
fur = gets.chomp
puts "Is this hamster a good candidate for adoption?"
adoptable = gets.chomp
puts "How old is the hamster?"
age = gets.chomp.to_i

puts "#{name} is this a #{fur} colored hamster and is this loud: #{volume}.  It is #{age} years old.  Do we think #{name} is good for adoption?  Definitely #{adoptable}!"