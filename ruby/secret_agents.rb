# encrypt method
# INPUT: password
# OUTPUT: password that's advanced one letter forward for each letter
# example inputs: abc, zed (STRING)
# example outputs: bcd, afe (STRING)

#define method
def encrypt (password)
	#index each letter and use next
	password[0].next + password[1].next + password[2].next
end

puts encrypt("abc")
puts encrypt("zed")