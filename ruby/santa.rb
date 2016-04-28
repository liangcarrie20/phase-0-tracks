# Define santa class

class Santa

	# define initialize method
	# add gender, ethnicity to be passed in
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		# add gender attribute
		@gender = gender
		# add ethnicity attribute
		@ethnicity = ethnicity
		# add reindeer_ranking attribute
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

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
kris = Santa.new("female", "North Polean")
kris.speak
kris.eat_milk_and_cookies("peanut butter cookie")

# diverse initializations
santas = []
example_genders = ["female", "male", "bigender", "N/A", "gender variant", "female", "two-spirit"]
example_ethnicities = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end
# print santas array
p santas