# Input: spy's real name (string)
# Output: spy's spy name (string)

# define method for: 
# Ask user to enter first and last name, making input downcase (string)
# Turn user's first and last name into an array
# Swap first and last name
	# Reverse the order of the array

# change vowels to next vowel
# change consonants to next consonant
	# iterate through name changing using if/elsif/else
	# a to e, e to i, i to o, o to u, u to a
	#  b to d, d to f, h to j, n to p, t to v, z to b
	#  " " to " "
	# else letter.next
def spy_alias
	puts "What is your full name?"
	name = gets.chomp
	name_list = []
	name_list << name
	alias_names = []

	while name != "quit"
		new_alias = name.split(' ')
		new_alias[0], new_alias[1] = new_alias[1], new_alias[0]
		new_alias = new_alias.join(' ')
		alias_string = new_alias.split('')

		alias_string.map! do |letter|
			if letter == "a"
				letter = "e"
			elsif letter == "A"
				letter = "E"
			elsif letter == "e"
				letter = "i"
			elsif letter == "E"
				letter = "I"
			elsif letter == "i"
				letter = "o"
			elsif letter == "I"
				letter = "O"
			elsif letter == "o"
				letter = "u"
			elsif letter == "O"
				letter = "U"
			elsif letter == "u"
				letter = "a"
			elsif letter == "U"
				letter = "A"
			elsif letter == "b"
				letter = "d"
			elsif letter == "B"
				letter = "D"
			elsif letter == "d"
				letter = "f"
			elsif letter == "D"
				letter = "F"
			elsif letter == "h"
				letter = "j"
			elsif letter == "H"
				letter = "J"
			elsif letter == "n"
				letter = "p"
			elsif letter == "N"
				letter = "P"
			elsif letter == "t"
				letter = "v"
			elsif letter == "T"
				letter = "V"
			elsif letter == "z"
				letter = "b"
			elsif letter == "Z"
				letter = "B"
			elsif letter == " "
				letter = " "
			else
				letter.next
			end
		end

		spy_name = alias_string.join('')
		puts spy_name
		alias_names << spy_name
		puts "Please enter a name again, or enter 'quit' to finish."
		name = gets.chomp
		name_list << name
	end

	name_list.pop
	x = name_list.length
	x.times {|z| puts alias_names[z] + " is actually " + name_list[z]+"."}
end
spy_alias
# print out secret agent name and change case