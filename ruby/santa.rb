# Define santa class

class Santa

	# define initialize method
	def initialize
		puts "Initializing Santa instance ..."

	# define speak method
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	# define eat milk and cookies method
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

# check that santa can be initialized
kris = Santa.new
kris.speak
kris.eat_milk_and_cookies("peanut butter cookie")