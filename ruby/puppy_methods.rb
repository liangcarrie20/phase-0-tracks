class Puppy

  # add initialize method
  def initialize
  	puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  # add speak method that takes an integer & prints "Woof!"
  def speak(bark_number)
  	bark_number.times {|i| puts "Woof!"}
  end

  # add roll_over method that prints "*rolls over*"
  def roll_over
  	puts "*rolls over*"
  end

  # add dog_years method that converts human_years to dog_years
  def dog_years(human_years)
  	puts human_years * 7
  end

  # add sit method
  def sit
  	puts "*sits down*"
  end

end

# Puppy driver codes
# initialize an instance of Puppy
spike = Puppy.new

# verify instance can fetch a ball
spike.fetch("ball")

# verify speak
spike.speak(5)

# verify roll_over
spike.roll_over

# verify dog_years
spike.dog_years(3)

# verify sit
spike.sit

# desing new class: rabbit
class Rabbit

	# def initialize method
	def initialize
		puts "Here's a new rabbit ..."
	end

	# def hop method
	def hop(num_hops)
		puts "Hopped #{num_hops} times!"
	end

	# def eat_carrot method
	def eat_carrot
		puts "Ate a carrot."
	end

end

# verify Rabbit methods
cotton = Rabbit.new
cotton.hop(3)
cotton.eat_carrot

# use loop to make 50 instances of Rabbit
for i in 0..49
	i = Rabbit.new
end