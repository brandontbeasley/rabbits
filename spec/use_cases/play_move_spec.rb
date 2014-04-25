describe Rabbits::PlayMove do

	let (:game) { Rabbits::StartGame.run(:players => ["john", "paul", "george"]).game}
	before do

	end	
	it 'exists' do
		expect(Rabbits::PlayMove).to be_a Class
	end

	xit 'repopulates the dice cup if needed ' do
		dice_cup = game.turns.last.cup
		# expect(dice_cup).to receive(:roll).and_return(['shot', 'green', 'yellow'])
		# outcome = dice_cup.roll
		subject.run(game: game)
		binding.pry
		expect(dice_cup.die.count).to eq 12
	end


end
