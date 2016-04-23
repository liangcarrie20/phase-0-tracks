# ask agent for their real name
# set name variable equal to a string of the agent's name using gets.chomp
# change first and last name string into an array of words using split(' ')
puts "What is your first and last name?"
name = gets.chomp.split
p name

# reverse the array
name.reverse!
p name

# change vowels to the next vowel (convert "u" to "a")
# change consonants to the next consonant (convert "z" to "b")
# define method of encryption