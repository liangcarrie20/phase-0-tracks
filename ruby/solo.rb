# Create Cat class
class Cat
  # use attr_reader and attr_accessor
  attr_reader :things_scratched
  attr_accessor :name, :gender, :age, :breed

  # define method to initialize an instance of Cat
    # name
    # default age 0 years old
    # breeds: Bengal, Manx, Munchkin, Persian, Siamese
    # personality: cuddly, feisty, independent
  def initialize (name)
    puts "Initilizing Cat instance ..."
    @name = name
    puts "It's name is #{name}"
    @noise = ["meow", "purrrrr"]
    @things_scratched = []
  end

  def scratch_something(item)
  	if @things_scratched.include?(item)
  		puts "#{@name} scratched #{item}."
  	else
  		puts "#{@name} hasn't scratched #{item}."
  	end
  end

# display list of items scratched
 def display_scratch
        puts "#{@name} has scratched: ".rjust(10)
        @things_scratched.each do |item|
            puts item.rjust(15)
        end
    end

  # define method to make Cat scratch more items
  def scratch(item)
        if !@things_scratched.include?(item)
            @things_scratched << item.to_s
        end
    end

  # speak random
  def speak
  	puts @noise.sample
  end

  # make a year older
  def birthday
  	@age += 1
  end
end

def scratch_items(cat)
    puts "Enter an item that the cat has scratched, or type 'done' to complete: " 
    item = gets.chomp
    if item == "done"
        puts "#{cat.name} has scratched: #{cat.things_scratched}"
        return cat
    else
        cat.scratch(item)
        puts "#{cat.name} scratched #{item}!"
        scratch_items(cat)
    end
end

def make_cat(name)
	cat = Cat.new(name)

	# enter age
	puts "How old is #{cat.name}?"
	age = gets.chomp
	cat.age=(age)

	# gender
	puts "What is #{cat.name}'s gender?"
	gender = gets.chomp
	cat.gender=(gender)

	# items scratched
	puts "What has #{cat.name} been scratching?"
	scratch_items(cat)

	return cat
end

# Verify Cat can be initialized
# cats = []

# cats << Cat.new("Marlon", example_breeds.sample, example_personalities.sample)

# user interaction

def interface()
	# initial message
	puts "Cat Maker 1.0: Make as many kittens as you'd like!"

	#empty array for cats
	cat_list = []

	done_making = false
	# until done_making == true
	until done_making
		# ask user to name cat
	    puts "What is your cat's name?, Or type 'done' to end."
	    name = gets.chomp
	    if name == "done"
	    	# Print list of Cats and end program
	    	puts "Your cats: "
	    	cat_list.each do |cat|
	    		puts "#{cat.name}: ".rjust(5)
	    		puts "Age: #{cat.age}".rjust(10)
	    		puts "Gender: #{cat.gender}".rjust(10)
	    		puts cat.display_scratch
	    	end
	    	done_making = true
	    else
	    	# make new cat and add to list
	    	cat = make_cat(name)
	    	cat_list << cat
	    end
	end
end

interface