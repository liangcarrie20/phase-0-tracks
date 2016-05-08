# define module Shout
# module Shout
#@  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end

#  def self.yelling_happily(words)
#  	words + "!!! " + ":D" + "<3"
#  end
# end

# drivercode
# p Shout.yell_angrily("You")
# p Shout.yelling_happily("Yes")

module Shout
	def yell_angrily(words)
		puts words + "!!!" + " >:["
	end

	def yell_happily(words)
		puts words + "!!!" + " :D" + "<3333333"
	end
end


class Cruella_de_Vil
	include Shout
end

class Olaf
	include Shout
end

cruella = Cruella_de_Vil.new
cruella.yell_angrily("They're going to pay for this")

olaf = Olaf.new
olaf.yell_happily("Some people are worth melting for")