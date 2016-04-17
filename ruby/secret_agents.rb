# encrypt method
# INPUT: password
# OUTPUT: password that's advanced one letter forward for each letter
# example inputs: abc, zed, bcd, afe (STRING)
# example outputs: bcd, afe, abc, zed (STRING)

#define method
def encrypt (password)
	#do something
	password.next
end

puts encrypt("abc")
puts encrypt("bcd")