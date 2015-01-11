class Horses
	attr_accessor:name
	attr_accessor:position

	@@list_of_horses = [ ]

	def initialize
		self.name = "horsename"
		self.position = 0
		Horses.list_of_horses.push(self)
	end
#  position indicates than all the horses will start at 0
	def display_info
		"#{self.name}->#{self.position}"
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
		self.position = (self.position) + rand(1..3)
  	end

# move_forward will make the example horse move forward a random number 1-10 characters
end

ramone = Horses.new
ramone.name = "R"

sally = Horses.new
sally.name = "S"

gracie = Horses.new
gracie.name = "G"

maizie = Horses.new
maizie.name = "M"
# you indicate all of the informaion about the horses in the horse class

class Track

	attr_accessor:horses
	attr_accessor:name

	def initialize
		self.horses = [ ]
	end
# this creates the track for the horses
end 


kentucky_derby = Track.new
kentucky_derby.name = "Kentucky derby"
kentucky_derby.horses.push(ramone)
kentucky_derby.horses.push(sally)
kentucky_derby.horses.push(gracie)
kentucky_derby.horses.push(maizie)

puts kentucky_derby.horses[0].display_info
puts kentucky_derby.horses[1].display_info
puts kentucky_derby.horses[2].display_info
puts kentucky_derby.horses[3].display_info

	
#puts "Let's race horses! Pick a horse to race: 1, 2, 3, or 4"
	# horsename = gets.chomp
puts "To move the horses, press return repeatedly"

while gets.chomp == " "
system("clear")	
# system("clear") will refresh the screen
	# kentucky_derby.horses.each do |horse|
			if ramone.move_forward <=10
				puts ramone.position
	# if horse.display_info.length <= 10
	# horse.move_forward
	# puts ramone.display_info
			else 
				puts "You are the Winner!"
			break
		# break indicated that the loop will terminate'
			end
end

# while true
# 	ramone.move_forward
# 	puts ramone.position
# end


	


# figure out how to move ramone a random # and also how to move all other horses


