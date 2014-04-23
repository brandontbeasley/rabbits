describe Rabbits::Database::InMemory do
  it 'exists' do
    expect(Rabbits::Database::InMemory).to be_a Class
  end

  it 'initializes with empty hashes' do
    expect(Rabbits.db.games).to eq ({})
    expect(Rabbits.db.turns).to eq ({})
    expect(Rabbits.db.cups).to eq ({})
    expect(Rabbits.db.players).to eq ({})
  end

  it 'can create a player' do
      player = Rabbits.db.create_player("Longnose Larry")
      retrieved_player = Rabbits.db.get_player(player.id)
      expect(retrieved_player.name).to eq "Longnose Larry"
    end

  it 'can get a player' do
    player = Rabbits.db.create_player("Bulky Bertha")
    retrieved_player = Rabbits.db.get_player(player.id)
    expect(retrieved_player.name).to eq("Bulky Bertha")
  end
  it 'can create a turn' do
      turn = Rabbits.db.create_turn(1, 2)
      retrieved_turn = Rabbits.db.get_turn(turn.id)
      expect(retrieved_turn.player_id).to eq 1
      expect(retrieved_turn.game_id).to eq 2
      expect(retrieved_turn.cup.die.count).to eq(13)
  end

  it 'can get a turn' do
    turn = Rabbits.db.create_turn(1, 2)
    retrieved_turn = Rabbits.db.get_turn(turn.id)
    expect(retrieved_turn.player_id).to eq 1
    expect(retrieved_turn.game_id).to eq 2
  end

  xit 'can create a game' do
      player_count = 2
      game = Rabbits.db.create_game(player_count)
      expect(game.players.length).to eq 2
      expect(game.players.name).to eq 'bobby brownfoot'
    end
  it 'can create a cup' do
      cup = Rabbits.db.create_cup
      expect(cup.die.length).to eq 13
    end
  it 'can update a players score'

  it 'can get a game'

  it 'can get a cup'

  it 'can get turn history'
  it 'can get all players'



end
