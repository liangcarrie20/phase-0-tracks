# Input: spy's real name (string)
# Output: spy's spy name (string)

# define method for: 
# Ask user to enter first and last name, making input downcase (string)
# Turn user's first and last name into an array
def spy_alias (first_name, last_name)
	full_name = []
	puts "What is your first name?"
	first_name = gets.chomp.downcase # (string)
	full_name << first_name
	puts "What is your last name?"
	last_name = gets.chomp.downcase
	full_name << last_name
	full_name.reverse!
end

# Swap first and last name
	# Reverse the order of the array

# change vowels to next vowel
# change consonants to next consonant
	# iterate through name changing using if/elsif/else
	# a to e, e to i, i to o, o to u, u to a
	#  b to d, d to f, h to j, n to p, t to v, z to b
	#  " " to " "
	# else letter.next

# print out secret agent name and capitalize