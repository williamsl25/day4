class Horses
	attr_accessor:name
	attr_accessor:age
	attr_accessor:color
	attr_accessor:position
	@@list_of_horses = [ ]

	def initialize
		self.name = "horsename"
		# self.age = "age"
		# self.color = "color"
		self.position = 0
		Horses.list_of_horses.push(self)
	end
#  position indicates than all the horses will start at 0
	def display_info
		"#{self.name} ->"

	end

	def self.display_all_horses
	end
# displays all of the horse information - name, age, color, position 

	def self.list_of_horses
		# p self
		@@list_of_horses
	end
# makes a list of all of the horses
	def move_forward
		@@list_of_horses.insert(0, " " * rand(1..3) )
	end
# move_forward will make the example horse move forward a random number 1-10 characters
end

class Track

	attr_accessor:horses
	attr_accessor:name

	def initialize
		self.horses = [ ]
	end
# this creates the track for the horses
end 

ramone = Horses.new
ramone.name = "R"
# ramone.age = "is 3 years old"
# ramone.color = "He is black"

sally = Horses.new
sally.name = "S"
# sally.age = "is 3 years old"
# sally.color = "She is white"

gracie = Horses.new
gracie.name = "G"
# gracie.age = "is 9 years old"
# gracie.color = "She is brown"

maizie = Horses.new
maizie.name = "M"
# maizie.age = "is 2 years old"
# maizie.color = "She is brown"
# you indicate all of the informaion about the horses in the horse class

kentucky_derby = Track.new
kentucky_derby.name = "Kentucky derby"
kentucky_derby.horses.push(ramone)
kentucky_derby.horses.push(sally)
kentucky_derby.horses.push(gracie)
kentucky_derby.horses.push(maizie)

p kentucky_derby.horses[0].display_info
p kentucky_derby.horses[1].display_info
p kentucky_derby.horses[2].display_info
p kentucky_derby.horses[3].display_info

	
#puts "Let's race horses! Pick a horse to race: 1, 2, 3, or 4"
	# horsename = gets.chomp
puts "To move the horses, press return repeatedly"

while gets.chomp == ""
system("clear")	
# system("clear") will refresh the screen
	kentucky_derby.horses.each do |horse|
			if horse.display_info.length <= 80
				horse.move_forward
				puts horse.display_info
			else 
				puts "You are the Winner!"
			break
		# break indicated that the loop will terminate'
			end
	end
end



	


# figure out how to move ramone a random # and also how to move all other horses

