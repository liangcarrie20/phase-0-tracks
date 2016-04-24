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
def spy_alias (first_name, last_name)
	full_name = []
	puts "What is your first name?"
	first_name = gets.chomp.downcase # (string)
	full_name << first_name
	puts "What is your last name?"
	last_name = gets.chomp.downcase
	full_name << last_name
	full_name.reverse!

	until first_name == "quit"
		spy_name = full_name.join(' ') #turn name back into string
		name_string = full_name.split('') #split string to array of letters"

		name_string.map! do |letter|
			if letter == "a"
				letter == "e"
			elsif letter == "e"
				letter == "i"
			elsif letter == "i"
				letter == "o"
			elsif letter == "o"
				letter == "u"
			elsif letter == "u"
				letter == "a"
			elsif letter == "b"
				letter == "d"
			elsif letter == "d"
				letter == "f"
			elsif letter == "h"
				letter == "j"
			elsif letter == "n"
				letter == "p"
			elsif letter == "t"
				letter == "v"
			elsif letter == "z"
				letter == "b"
			else
				letter.next
			end
		end
	end
end

# print out secret agent name and change case