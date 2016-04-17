# encrypt method
# INPUT: password
# get length of password to put in variable
# OUTPUT: password that's advanced one letter forward for each letter
	#grab letter
	#increment letter
	#add to convert
# example inputs: abc, zed (STRING)
# example outputs: bcd, afe (STRING)

#define method
def encrypt (password)
	i = 0
	convert = ""
	length = password.length

	for i in 0...length
		convert += password[i].next
		if password[i] == "z"
			convert = convert.chomp("a")
		end
	end
	return convert
end

puts encrypt("abc")
puts encrypt("zed")

#decrypt method
#read password string
#get length of password to put in variable
#OUTPUT: decrypted password (each letter is brought back one letter)
	#get letter
	#get index number
	#decrese index number by one
	#translate back into alphabet string
	#add to convert

def decrypt(password)
	i = 0
	convert = ""
	length = password.length
	alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

	for i in 0...length
		pass_index = password[i]
		str_num = alphabet.index(pass_index) - 1
		convert += alphabet[str_num]
		if password[i] == "a"
			convert = convert.chomp("Z")
			convert += "z"
		end
		if password[i] == "A"
			convert = convert.chomp("z")
			convert += "Z"
		end
	end
return convert
end

puts decrypt("bcd")
puts decrypt("afe")