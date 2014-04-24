describe Rabbits::Game do
    it 'exists' do
      expect(Rabbits::Game).to be_a Class
    end
    it 'initializes with players and an empty turn array' do
      game = Rabbits::Game.new(['bob', 'susie johansen'])
      expect(game.players.count).to eq 2
      expect(game.turns).to eq([])
    end
end
