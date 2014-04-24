require 'spec_helper'

describe Rabbits::StartGame do
  it 'exists' do
    expect(Rabbits::StartGame).to be_a(Class)
  end

  it 'throws an error if no players are entered' do
    result = Rabbits::StartGame.run(players: [])
    expect(result.success?).to be_false
    expect(result.error).to eq(:no_players)
  end

  it "return's the current game" do
    expect(subject).to receive(:get_first_player_id).and_return 501
    result = subject.run(players: ['john', 'paul', 'george'])
    expect(result.success?).to be_true
    expect(result.game.turns.last.cup.die.count).to eq 13
    expect(result.game.turns.last.player_id).to eq 501
    # expect(result.game.id).to eq 
  end

end
