module Rabbits
  class Cup
    attr_accessor :die
      def initialize
        @die = ["green", "green", "green", "green", "green", "green", "yellow",  "yellow",  "yellow",  "yellow", "red", "red", "red",].shuffle
      end
     def roll
	     roll = 3.times.map{ @die.pop }

	      die_outcome = roll.map { |die|
	        side = rand(6) + 1
	        if die == 'green'
	          if side < 4
	            'meat'
	          elsif side == 6
	            'shot'
	          else
	            'green'
	          end
	        elsif die == 'yellow'
	          if side < 3
	            'meat'
	          elsif side  == 3 || side == 4
	            'yellow'
	          else
	            'shot'
	          end
	        else
	          if side < 4
	            'shot'
	          elsif side == 6
	            'meat'
	          else
	            'red'
	          end
	        end
	      }
	      return die_outcome
    end
  end
end
