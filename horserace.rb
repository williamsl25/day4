class Horse
	attr_accessor :name
	attr_accessor :location

	def initialize	#an instance of the method
		self.name = "default"	#will display the current variable
		self.location = 0
	end
#  position indicates than all the horses will start at 0

	def move
		self.location += rand(1..6)
# keeps track of horses location
# move will make the example horse move forward a random number 1-10 characters
	end

	
	def display_lane
		puts "{#{self.location} #{self.name}"
		print '*'*self.location	#will make symbol instead of a number to show
								    # movement
	end
	
end

class Board

	attr_accessor :horses
	attr_accessor :length

	def initialize
		self.horses = [ ]
	end
# this creates the track for the horses
	def display_horses
		horses.each do |horse|
			puts horse.display_lane
		end
# 
	end

	def display_board
		puts '-'*79
		self.display_horses
		puts '-'*65
	end

	def move_all_horses
		horses.each do |horse|
			horse.move
		end
	end
	def winner
		self.length = 65
	end

end

# list all of the indiv horse info
horse1 = Horse.new
horse1.name = "Ramone"
# horse1.age = "is 3 years old"
# horse1.color = "He is black"

horse2 = Horse.new
horse2.name = "Sally"
# horse2.age = "is 3 years old"
# horse2.color = "She is white"

horse3 = Horse.new
horse3.name = "Gracie"
# horse3.age = "is 9 years old"
# horse3.color = "She is brown"

horse4 = Horse.new
horse4.name = "Maizie"
# horse4.age = "is 2 years old"
# horse4.color = "She is brown"
# you indicate all of the informaion about the horses in the horse class


kentucky_derby = Board.new
kentucky_derby.horses.push(horse1,horse2,horse3,horse4)
# the first horses. indicates the horses attribute created in the Board class
# then you push(each of the individual horses that are in the horse class)
# this allows you to control the horses on the track.  If you don't push 
# the indiv horses, then you won't have horses on the track
puts "Let's start the race!"

game_on = true

while game_on
	system("clear")   #will clear out screen 
	kentucky_derby.display_board
	gets.chomp  
	kentucky_derby.move_all_horses
	kentucky_derby.display_board
	kentucky_derby.winner
	if horse1.location > 65
		game_on = false
		puts "#{horse1.name} won!"
	elsif horse2.location > 65
		game_on = false
		puts "#{horse2.name} won!" 
	elsif horse3.location > 65
		game_on = false
		puts "#{horse3.name} won!" 
	elsif horse4.location > 65
		game_on = false
		puts "#{horse4.name} won!" 	
	end
		
end



# figure out how to move ramone a random # and also how to move all other horses

