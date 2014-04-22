module Rabbits
  class Game < Entity
    attr_accessor :id, :players, :turn
    def initialize
      @players = []
      @turn = []
    end
  end
end
