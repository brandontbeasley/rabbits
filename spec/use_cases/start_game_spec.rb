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
  it 'initializes with players' do
    result = Rabbits::StartGame.run(players: ['john', 'paul', 'george'])

    expect(result.success?).to be_true

  end
end
