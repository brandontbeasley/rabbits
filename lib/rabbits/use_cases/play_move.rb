module Rabbits
	class PlayMove < UseCase
		def run(inputs)
			game = inputs[:game]
      turn = game.turns.last
      dice_cup = turn.cup
      outcome = dice_cup.roll
      
      outcome.map do |result|
        if result == 'meat'
          turn.meat_count += 1
        elsif result == 'shot'
          turn.shot_count += 1
        else
          dice_cup.die.push(result)
        end
      end
    success game: game
    end
	end
end
