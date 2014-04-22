describe Rabbits::Database::InMemory do
  it 'exists' do
    expect(Rabbits::Database::InMemory).to be_a Class
  end

  it 'initializes with empty hashes' do
    expect(Rabbits::Database::InMemory.games).to eq ({})
    expect(Rabbits::Database::InMemory.turns).to eq ({})
    expect(Rabbits::Database::InMemory.cups).to eq ({})
    expect(Rabbits::Database::InMemory.players).to eq ({})
  end

  xit 'can create a game'
      game = Rabbits::Database::InMemory.create_game(['bobby brownfoot', 'saggy susie'])
      expect(game.players.length).to eq 2
      expect(game.players.name).to eq 'bobby brownfoot'
  xit 'can create a turn'
      turn = Rabbits::Database::InMemory.create_turn(player_id: 1, game_id: 2)
      expect(Rabbits::Database::InMemory.turns.first[player_id]).to eq 1
      expect(Rabbits::Database::InMemory.turns.first[game_id]).to eq 2
  xit 'can create a player'
      player = Rabbits::Database::InMemory.create_player("Longnose Larry")
      expect(Rabbits::Database::InMemory.players.firts[name).to eq "Longnose Larry"
  xit 'can create a cup'
      cup = expect(Rabbits::Database::InMemory.create_cup
      expect(cup.die.length).to eq 13
  it 'can update a players score'

  it 'can get a game'
  it 'can get a turn'
  it 'can get a player'
  it 'can get a cup'

  it 'can get turn history'
  it 'can get all players'



end
