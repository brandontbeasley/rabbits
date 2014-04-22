module Rabbits
	class Turn
		attr_reader :turn_id, :player_id, :game_id
		attr_accessor :shot_count, :meat_count, :roll_count, :cup

		def initialize(attrs)
			@player_id = attrs[:player_id]
			@game_id = attrs[:game_id]
			@shot_count = 0
			@meat_count = 0
			@roll_count = 0
			@cup = Cup.new
		end
	end
end
