module Rabbits
	class Turn < Entity
		attr_reader :turn_id, :player_id, :game_id
		attr_accessor :shot_count, :meat_count, :roll_count
		
		def initialize(attrs)
			@player_id = attrs[:player_id]
			@game_id = attrs[:game_id]
			shot_count = 0
			meat_count = 0
			roll_count = 0
			Roll.new
		end
	end
end