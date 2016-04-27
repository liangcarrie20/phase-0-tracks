class Puppy

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

# driver codes
# initialize an instance of Puppy
spike = Puppy.new

# verify instance can fetch a ball
spike.fetch("ball")

# verify speak
spike.speak(5)

# verify roll_over
spike.roll_over