module Rabbits
	class PlayMove < UseCase
    def roll_face(array)
    
    end

		def run(inputs)
			game = inputs[:game]
      turn = game.turns.last
      dice_cup = turn.cup
      roll = 3.times.map{ dice_cup.die.pop }

      die_outcome = array.map { |die|
        side = rand(6) + 1
        if die == 'green'
          if side < 4
            'meat'
          elsif side == 6
            'shot'
          else
            'paw'
            dice_cup.push('green')
          end
        elsif die == 'yellow'
          if side < 3
            'meat'
          elsif side  == 3 || side == 4
            'paw'
          else
            'shot'
          end
        else
          if side < 4
            'shot'
          elsif side == 6
            'meat'
          else
            'paw'
          end
        end
      }

      outcome = roll_face(roll)
      outcome.each { |result| 
        if result == 'meat'



      }


  		end
	end
end
