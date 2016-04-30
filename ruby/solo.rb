# Create Cat class
class Cat
	# use attr_reader and attr_accessor
	attr_reader :breed, :personality
	attr_accessor :name, :gender

	# define method to initialize an instance of Cat
		# name
		# default age 0 years old
		# breeds: Bengal, Manx, Munchkin, Persian, Siamese
		# personality: cuddly, feisty, independent
	def initialize(name, breed, personality)
		puts "Initilizing Cat instance ..."
		@name = name
		@breed = breed
		@personality = personality
		@age = 0
	end
	# define method to make Cat meow
	def speak(num)
		puts "Meow " * num
	end
	# define method to make Cat scratch
	def scratch(item)
		puts "Cat scratched #{item}"
	end
	# define method to make Cat eat(food)
	def eat(food)
		puts "Cat ate #{food}"
	end
end

# Verify Cat can be initialized
cat = Cat.new("Marlon", "Bengal", "cuddly")
cat.speak(2)
cat.scratch("sofa")
cat.eat("fish")