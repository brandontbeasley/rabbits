module Rabbits
  class StartGame < UseCase
    def run(inputs)
      players = inputs[:players]
      return failure(:no_players) if players.count == 0
      p_array = []
      players.map do |player|
        p = Rabbits.db.create_player(player)
        p_array.push(p)
      end

      game = Rabbits.db.create_game(p_array)

      #figure out which player goes first
      first_player = p_array.shuffle.first

      #create a turn
      turn = Rabbits.db.create_turn(first_player.id, game.id)

      game.turn.push(turn)
      binding.pry

    end
  end
end
