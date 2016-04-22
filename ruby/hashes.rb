# Initialize empty hash
client_info = {}

# Ask interior designer to enter client's name (string)
puts "Enter client's name:"
client_info[:name] = gets.chomp.capitalize

# Ask interior designer to enter client's age (integer)
puts "Enter client's age:"
	# Convert input to integer
client_info[:age] = gets.chomp.to_i

# Ask interior designer to enter client's number of children (integer)
puts "Enter client's number of children:"
	# Convert input to integer
client_info[:children] = gets.chomp.to_i

# Ask interior designer to enter client's decor theme (string)
puts "Enter client's decor theme:"
client_info[:theme] = gets.chomp

# Ask interior designer to enter whether or not client likes chandeliers (boolean)
puts "The client like chandeliers: true/false?"
	# Convert input to boolean
client_info[:likes_chandeliers] = gets.chomp

# Ask interior designer to enter whether or not client likes lime green paint (boolean)
puts "The client like lime green paint: true/false?"
	# Convert input to boolean
client_info[:likes_limegreen] = gets.chomp

# Ask interior designer to enter whether or not client likes purple (boolean)
puts "The client like purple: true/false?"
	# Convert input to boolean
client_info[:likes_purple] = gets.chomp

# Ask interior designer to enter whether or not client likes red (boolean)
puts "The client like red: true/false?"
	# Convert input to boolean
client_info[:likes_red] = gets.chomp

# Print hash when interior designer completed all questions
p client_info
# Ask interior designer if she needs to update key (no need to loop); if 'none', skip...
# Print latest version of hash for the designer