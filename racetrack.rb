require './horserace.rb'


name = gets.chomp

@gameon = true
track = [
[0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0]
]
def draw_track track, horsename
	puts horsename
	puts "#{start_race(track)[0][0]}(1)#{start_race(track)[0][1]}#{start_race(track)[0][2]}#{start_race(track)[0][3]}#{start_race(track)[0][4]}"
	puts '__________' 
	puts "#{start_race(track)[1][0]}(2)#{start_race(track)[1][1]}#{start_race(track)[1][2]}#{start_race(track)[1][3]}#{start_race(track)[1][4]}"
	puts '__________' 
	puts "#{start_race(track)[2][0]}(3)#{start_race(track)[2][1]}#{start_race(track)[2][2]}#{start_race(track)[2][3]}#{start_race(track)[2][4]}"
	puts '__________' 
	puts "#{start_race(track)[3][0]}(4)#{start_race(track)[3][1]}#{start_race(track)[3][2]}#{start_race(track)[1][3]}#{start_race(track)[3][4]}"
	puts '__________' 

end


# class track

# # 	attr_accessor :name
# # 	attr_accessor :position
	
# # 	def initialize 
# # 		self.name = nil
# # 		self.position = 0
# # 	end

# # 	def draw_race_track
# # 		puts "#{race_track}"
# # 	end
# # end

# class Track
# +	attr_accessor :horse_track
# +
# +	def initialize
# +		self.horse_track = "_" * 100 + "|"
# +	end
# # +
# +
# +	def display_horse_track
# +	puts "#{horse_track}"
# +
# +	end
# +end

# #  figure out how to point to insert require 'horserace.rb' so that you can point to horses to be raced
	
# figure out how to make computer move cursor random # (1-5) when user presses enter
# random_number = rand(1..5)
 

