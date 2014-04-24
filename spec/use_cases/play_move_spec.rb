describe Rabbits::PlayMove do

	let (:game) { Rabbits::StartGame.run(:players => ["john", "paul", "george"])} 
	
	it 'exists' do
		expect(Rabbits::PlayMove).to be_a Class
	end

	it "takes three random die from the dice cup" do
		dice_cup = Rabits.db.get_game(game.id).turn.last.cup
	end

	it "takes the open game" do
		game_id = game.id
		result = Rabbits::PlayMove.run(game_id)
		expect(result.success?).to eq true
	end

end