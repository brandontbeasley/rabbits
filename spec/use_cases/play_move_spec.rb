describe Rabbits::PlayMove do

	let (:game) { Rabbits::StartGame.run(:players => ["john", "paul", "george"]).game} 
	before do
		Rabbits::PlayMove.any_instance.stub(:roll).and_return(%w{meat meat meat})
	end
	it 'exists' do
		expect(Rabbits::PlayMove).to be_a Class
	end


	it "takes three random die from the dice cup" do
		current_game = Rabbits.db.get_game(game.id)
		dice_cup = game.turns.last.cup
		expect(dice_cup.die.count).to eq 13
		subject.run(game: current_game)
		expect(dice_cup.die.count).to eq 10
	end

	xit "takes the open game" do
		game_id = game.id + 420420
		result = Rabbits::PlayMove.run(game: game)
		expect(result.error?).to eq false
		# expect(result.error).to eq :invalid_game_id
	end

end