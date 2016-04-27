class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

# driver codes
# initialize an instance of Puppy
spike = Puppy.new

# verify instance can fetch a ball
spike.fetch("ball")

