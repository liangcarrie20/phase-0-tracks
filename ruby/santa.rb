# Define santa class

class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

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

	# attribute to change Santa's age
	def celebrate_birthday
		@age = @age + 1
	end

	# attribute to move reindeer to last place in rankings (setter)
	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end

	# setter method (writable)
#	def gender=(new_gender)
#		@gender = new_gender
#	end

	# getter methods for age and ethnicity (readable)
#	def age
#		@age
#	end

#	def ethnicity
#		@ethnicity
#	end

end

# check that santa can be initialized (driver code)
santa = Santa.new("female", "North Polean")
santa.speak
santa.eat_milk_and_cookies("peanut butter cookie")

# diverse initializations (driver code)
# santas = []
# example_genders = ["female", "male", "bigender", "N/A", "gender variant", "female", "two-spirit"]
# example_ethnicities = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
# example_genders.length.times do |i|
#	santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

# print santas array
# p santas

# test celebrate_birthday
p santa
santa.celebrate_birthday
p santa

# test get_mad_at
santa.get_mad_at("Rudolph")
p santa

# test getter methods
puts " This Santa is #{santa.age} and is #{santa.ethnicity}."

# test setter method
santa.gender = "male"
p santa