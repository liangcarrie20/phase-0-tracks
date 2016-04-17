puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birthyear = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

current_year = 2016

if age == (current_year - birthyear) && (garlic == "yes" && insurance == "yes")
	puts "Probably not a vampire."
end

if !age == (current_year - birthyear) && (garlic == "no" || insurance == "no")
	puts "Probably a vampire."
end

if !age == (current_year - birthyear) && (garlic == "no" && insurance == "no")
	puts "Almost certainly a vampire."
end

if name == "Drake Cula"
	puts "Definitely a vampire."
end

if name == "Tu Fang"
	puts "Definitely a vampire."
end