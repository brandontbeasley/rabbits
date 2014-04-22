module Rabbits
  class Game
    attr_accessor :id, :players, :turn
    def initialize(players)
      @players = players
      @turn = []
    end
  end
end
