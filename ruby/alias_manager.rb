# Input: spy's real name (string)
# Output: spy's spy name (string)

# define method for: 
# Ask user to enter first and last name, making input downcase (string)
def spy_alias
	puts "What is your full name?"
	name = gets.chomp
	name_list = [] # create empty array for real names
	name_list << name # Turn user's first and last name into an array
	alias_names = [] # create empty array for alias names

#  lets user enter names and get a fake name back repeatedly until they decide to quit
	until name == "quit"
		#turn first + last name into array
		new_alias = name.split(' ')
		# capitalize array values
		new_alias.map!(&:capitalize)
		# Swap first and last name: reverse the order of the array
		new_alias[0], new_alias[1] = new_alias[1], new_alias[0]
		p new_alias
		# Turn new_alias into a string
		new_alias = new_alias.join(' ')
		#Turn string into array of letters"
		alias_string = new_alias.split('')
		# change vowels to next vowel
		# change consonants to next consonant
			# iterate through name changing using if/elsif/else
			# a to e, e to i, i to o, o to u, u to a AND for capital letters
			#  b to d, d to f, h to j, n to p, t to v, z to b AND for capital letters
			#  " " to " "
			# else letter.next
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
# Use a data structure to store the fake names as they are entered.
		spy_name = alias_string.join('')
		alias_names << spy_name
		puts "Please enter a name again, or enter 'quit' to finish."
		name = gets.chomp
		name_list << name
	end

	name_list.pop # remove last element
	list_length = name_list.length
	list_length.times {|z| puts alias_names[z] + " is actually " + name_list[z]+"."}
	# iterate block name_list.length times
end

#run method
spy_alias