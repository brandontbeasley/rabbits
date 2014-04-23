module Rabbits
  module Database
    class InMemory
      attr_accessor :games, :turns, :cups, :players

      def initialize
        @games = {}
        @turns = {}
        @cups = {}
        @players = {}
        @player_id_counter = 100
        @turn_id_counter = 300
        @game_id_counter = 500
        @cup_id_counter = 800
      end

      def create_player(name)
        player = Player.new(name: name)

        player.id = @player_id_counter += 1
        @players[player.id] = player
        return player
      end

      def get_player(player_id)
        player = @players[player_id]
        return player
      end

    end
  end
end
