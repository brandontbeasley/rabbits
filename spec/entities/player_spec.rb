  require 'spec_helper'
describe 'Player' do
  it 'exists' do
    expect(Rabbits::Player).to be_a(Class)
  end
  it 'is initialized with a player and a meat count' do
    player = Rabbits::Player.new(:name => "bob")
    expect(player.name).to eq("bob")
    expect(player.meat_count).to eq(0)
  end
end
