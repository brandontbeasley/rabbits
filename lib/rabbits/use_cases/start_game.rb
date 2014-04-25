module Rabbits
  class StartGame < UseCase
    def run(inputs)
      players = inputs[:players]
      return failure(:no_players) if players.count == 0

      p_array = players.map do |player|
        Rabbits.db.create_player(player)
      end

      game = Rabbits.db.create_game(p_array)

      #figure out which player goes first
      first_player = get_first_player_id(p_array)

      #create a turn
      turn = Rabbits.db.create_turn(first_player, game.id)

      game.turns.push(turn)

      success :game => game
    end

    def get_first_player_id(p_array)
      first_player =  p_array.shuffle.first
      return first_player.id
    end
  end
end
