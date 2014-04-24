module Rabbits
	class PlayMove < UseCase
		def run(inputs)
			game = inputs[:game]
			verify_game = Rabbits.db.get_game(game.id)
			
		end
	end
end