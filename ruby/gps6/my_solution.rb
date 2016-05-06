# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative: used for files you've written. used to access content within other files written.  You can pull a method written in another file into the current file.
# require: is for plugins that other users have written
require_relative 'state_data'

class VirusPredictor
	attr_reader :population_density, :population
# Initializes a new instance of the VirusPredictor class with the parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# runs predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# acessing the population and population density of each state from the state_data file.
# depending the population density, predicts absolute number of deaths based on population density.
# output: number of people that will die
  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      num = 0.4
    elsif @population_density >= 150
      num = 0.3
    elsif @population_density >= 100
      num = 0.2
    elsif @population_density >= 50
      num = 0.1
    else
      num = 0.05
    end
    number_of_deaths = (@population * num).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# based on population density it will determine a speed of spread.
# It will output the speed of spread in the state in months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
STATE_DATA.each do |key, value|
	VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
end

#=======================================================================
# Reflection Section