module Rabbits
  class Game
    attr_accessor :id, :players, :turns
    def initialize(players)
      @players = players
      @turns = []
    end
  end
end
