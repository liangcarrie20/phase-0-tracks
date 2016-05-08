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
puts "The client likes chandeliers: true/false?"
client_info[:likes_chandeliers] = gets.chomp
	# Convert input to boolean
	case client_info[:likes_chandeliers]
	when 'true', 'True', 'y', 'Y', 'yes', 'Yes'
		client_info[:likes_chandeliers] = true
	when 'false', 'False', 'n', 'N', 'no', 'No'
		client_info[:likes_chandeliers] = false
	end

# Ask interior designer to enter whether or not client likes lime green paint (boolean)
puts "The client likes lime green paint: true/false?"
client_info[:likes_limegreen] = gets.chomp
	# Convert input to boolean
	case client_info[:likes_limegreen]
	when 'true', 'True', 'y', 'Y', 'yes', 'Yes'
		client_info[:likes_limegreen] = true
	when 'false', 'False', 'n', 'N', 'no', 'No'
		client_info[:likes_limegreen] = false
	end

# Ask interior designer to enter whether or not client likes purple (boolean)
puts "The client likes purple: true/false?"
client_info[:likes_purple] = gets.chomp
	# Convert input to boolean
	case client_info[:likes_purple]
	when 'true', 'True', 'y', 'Y', 'yes', 'Yes'
		client_info[:likes_purple] = true
	when 'false', 'False', 'n', 'N', 'no', 'No'
		client_info[:likes_purple] = false
	end	

# Ask interior designer to enter whether or not client likes red (boolean)
puts "The client likes red: true/false?"
client_info[:likes_red] = gets.chomp
	# Convert input to boolean
	case client_info[:likes_red]
	when 'true', 'True', 'y', 'Y', 'yes', 'Yes'
		client_info[:likes_red] = true
	when 'false', 'False', 'n', 'N', 'no', 'No'
		client_info[:likes_red] = false
	end

# Print hash when interior designer completed all questions
p client_info

# Ask interior designer if she needs to update key (no need to loop); if 'none', skip...
puts "Do you need to update any of the keys? Enter 'yes' to update; enter 'none' to skip this step."
update = gets.chomp
if update == "yes"
	puts "Which key would you like to update? (name, age, children, theme, likes chandeliers, likes lime green, likes purple, likes red)"
	update_key = gets.chomp.gsub(/\s+/, "_").downcase.to_sym
	if update_key == :name
		puts "Update name:"
		client_info[:name] = gets.chomp.capitalize
		# Print latest version of hash for the designer
		p client_info
	elsif update_key == :age
		puts "Update age:"
		client_info[:age] = gets.chomp.to_i
		# Print latest version of hash for the designer
		p client_info
	elsif update_key == :children
		puts "Update number of children:"
		client_info[:children] = gets.chomp.to_i
		# Print latest version of hash for the designer
		p client_info
	elsif update_key == :theme
		puts "Update decor theme:"
		client_info[:theme] = gets.chomp
		# Print latest version of hash for the designer
		p client_info
	elsif update_key == :likes_chandeliers
		puts "Client likes chandeliers?"
		client_info[:likes_chandeliers] = gets.chomp
			case client_info[:likes_chandeliers]
			when 'true', 'True', 'y', 'Y', 'yes', 'Yes'
				client_info[:likes_chandeliers] = true
			when 'false', 'False', 'n', 'N', 'no', 'No'
				client_info[:likes_chandeliers] = false
			end
		# Print latest version of hash for the designer
		p client_info
	elsif update_key == :likes_limegreen
		puts "Client likes lime green paint?"
		client_info[:likes_limegreen] = gets.chomp
			case client_info[:likes_limegreen]
			when 'true', 'True', 'y', 'Y', 'yes', 'Yes'
				client_info[:likes_limegreen] = true
			when 'false', 'False', 'n', 'N', 'no', 'No'
				client_info[:likes_limegreen] = false
			end
		# Print latest version of hash for the designer
		p client_info
	elsif update_key == :likes_purple
		puts "Client likes purple?"
		client_info[:likes_purple] = gets.chomp
			case client_info[:likes_purple]
			when 'true', 'True', 'y', 'Y', 'yes', 'Yes'
				client_info[:likes_purple] = true
			when 'false', 'False', 'n', 'N', 'no', 'No'
				client_info[:likes_purple] = false
			end
		# Print latest version of hash for the designer
		p client_info
	elsif update_key == :likes_red
		puts "Client likes red?"
		client_info[:likes_red] = gets.chomp
			case client_info[:likes_red]
			when 'true', 'True', 'y', 'Y', 'yes', 'Yes'
				client_info[:likes_red] = true
			when 'false', 'False', 'n', 'N', 'no', 'No'
				client_info[:likes_red] = false
			end
		# Print latest version of hash for the designer
		p client_info
	else
		p client_info
	end
else
	p client_info
end