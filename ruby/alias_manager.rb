# Input: spy's real name (string)
# Output: spy's spy name (string)

# define method for: 
# Ask user to enter first and last name, making input downcase (string)
# Turn user's first and last name into an array
def spy_alias
	puts "What is your first and last name?"
	real_name = gets.chomp.downcase # (string)
	name_list = [] # empty array
	name_list << real_name # put real name into name list array
	full_name_list = [] # empty array for storing first and last name
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