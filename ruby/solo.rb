# Create Cat class
class Cat
# define method to initialize an instance of Cat
	# default age 0 years old
	# breeds: Bengal, Manx, Munchkin, Persian, Siamese
	# personality: cuddly, feisty, independent
	def initialize(breed, personality)
		puts "Initilizing Cat instance ..."
		@breed = breed
		@personality = personality
		@age = 0
	end
# define method to make Cat meow
	def speak(num)
		puts "Meow " * num
	end
# define method to make Cat scratch
# define method to make Cat eat(food)
end

# Verify Cat can be initialized
cat = Cat.new("Bengal", "cuddly")
cat.speak(2)