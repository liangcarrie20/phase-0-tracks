#Vampire Detector
current_year = 2016
num_employees = 0

puts "How many employees will be processed today?"
num_employees = gets.chomp.to_i

interviews = 0
until interviews == num_employees

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	birthyear = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic = gets.chomp

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp

	allergy_done = false

		until allergy_done

			puts "Name your allergies, if none, type done."

			allergy = gets.chomp

			if allergy == "sunshine"
				puts "Probably a vampire"
				allergy_done = true
			elsif allergy == "done"
				puts "Okay thank you."
				allergy_done = true
			else
				puts "Any other allergies?"
			end

		end										

		if name == "Drake Cula"
			puts "Definitely a vampire."
		elsif name == "Tu Fang"
			puts "Definitely a vampire."

		elsif (current_year - birthyear == age) && (garlic == "y" || insurance == "y")
			puts "Probably not a vampire."

		elsif (current_year - birthyear != age) && (garlic == "n" && insurance == "n")
			puts "Almost certainly a vampire."

		elsif (current_year - birthyear != age) && (garlic == "n" || insurance == "n")
			puts "Probably a vampire."
		else
				puts "Results inconclusive."
		end
	interviews += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."