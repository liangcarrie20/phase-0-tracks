module Shout
  def self.yell_angrily(words)
    words + "!!!" + " >:("
  end

  def self.yelling_happily(words)
  	words + "!!! " + ":D" + "<3"
  end
end

class Cruella_de_Vil
	include Shout
end

class Olaf
	include Shout
end

# drivercode
p Shout.yell_angrily("You")
p Shout.yelling_happily("Yes")