class Horse
	
	attr_accessor :name
	attr_accessor :position


	def initialize
		self.name = "name of horse"
		self.position = 0
		# Horses.list_of_horses.push(self)
	end
#  position indicates than all the horses will start at 0
# an instance of the class
# displays the horse info to the user
	
	def display_information
		"#{self.name}->#{self.position}"
	end

# Class Method
	def self.display_all_horses
	end
# self. points to all of the attributes of the object
	
	def move_forward
		self.position = self.position + rand(1..3) 
  	end
	
end

# you indicate all of the informaion about the horses in the horse class
ramone_horse = Horse.new
ramone_horse.name = "R"
ramone_horse.position = " "

sally_horse = Horse.new
sally_horse.name = "S"
sally_horse.position = " "

gracie_horse = Horse.new
gracie_horse.name = "G"
gracie_horse.position = " "

maizie_horse = Horse.new
maizie_horse.name = "M"
maizie_horse.position = " "

# call out the instance variable
puts "Let's race horses!"
puts "-" * 80 
puts ramone_horse.display_information
puts "-" * 80
puts sally_horse.display_information
puts "-" * 80 
puts gracie_horse.display_information
puts "-" * 80 
puts maizie_horse.display_information
puts "-" * 80 

# up to this point, it will display:
# Let's race horses!""
# --------------------------------------------------------------------------------
# R-> 
# --------------------------------------------------------------------------------
# S-> 
# --------------------------------------------------------------------------------
# G-> 
# --------------------------------------------------------------------------------
# M-> 
# --------------------------------------------------------------------------------

class Track
  attr_accessor :horse
  attr_accessor :name

  def initialize
    self.horse = []
  end

end

 # this creates the track for the horses


kentucky_derby = Track.new
kentucky_derby.name = "kentucky_derby"
kentucky_derby.horse.push(ramone_horse)
kentucky_derby.horse.push(sally_horse)
kentucky_derby.horse.push(gracie_horse)
kentucky_derby.horse.push(maizie_horse)

p kentucky_derby.horse[0].move_forward
p kentucky_derby.horse[1].move_forward
p kentucky_derby.horse[2].move_forward
p kentucky_derby.horse[3].move_forward


while  true

	ramone_horse.move_forward
	puts ramone_horse.position

end


