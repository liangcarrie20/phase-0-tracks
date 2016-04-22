# Release 0
# Declare array and use a method to print a status message
fruits = ["bananas", "strawberries", "apples"]
fruits.each { |fruit| puts "#{fruit} are yummy"}

# Release 1
# 1. Declare an array
weather =["sunny", "raining", "storming"]
# 1. Declare a hash
weather_2 = {"hot" => 'sunny', "wet" => 'raining', "nasty" => 'storming'}

# 2. Iterate through array with .each
weather.each do |sky_outside|
  puts sky_outside
end

# 2. Iterate through hash with .each
weather_2.each do |temperature, action|
  puts "When it's #{action}, it is #{temperature}"
end

# 2. Iterate through array with .map!
p weather
weather.map! {|sky_outside| p sky_outside.upcase}
p weather

# Release 2
# ARRAYS
# 1. Find a method that iterates through items and deletes anything that doesn't meet condition
weather.delete_if {|sky_outside| sky_outside.length < 6}
p weather

# 2. Find a method that filters through a data structure for only items that staisfy a certain condition
weather =["sunny", "raining", "storming"] # Re-declare array because it was deleted in previous exercise
weather.keep_if {|sky_outside| sky_outside.length < 6}
p weather

# 3. A different method that filters through a data structure for only items that satisfy a certain condition
weather.select! {|sky_outside| sky_outside.length < 6}
p weather

# HASHES
# 1. Find a method that iterates through items and deletes anything that doesn't meet condition
weather_2.delete_if {|temperature, action| temperature.length < action.length}
p weather_2

# 2. Find a method that filters through a data structure for only items that staisfy a certain condition
weather_2 = {"hot" => 'sunny', "wet" => 'raining', "nasty" => 'storming'} # Re-declare hash because it was deleted in previous exercise
weather_2.keep_if {|temperature, action| temperature.length < action.length}
p weather_2

# 3. A different method that filters through a data structure for only items that satisfy a certain condition
weather_2 = {"hot" => 'sunny', "wet" => 'raining', "nasty" => 'storming'} # Re-declare hash because it was deleted in previous exercise
weather_2.select! {|temperature, action| temperature.length < action.length}
p weather_2
