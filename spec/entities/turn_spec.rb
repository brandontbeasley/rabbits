describe 'Turn' do
  it 'exists' do
    expect(Rabbits::Turn).to be_a(Class)
  end
  it 'initializes with a cup' do
    turn = Rabbits::Turn.new(player_id: 1, game_id: 1)
        binding.pry
    expect(turn.cup.die.count).to eq(13)
  end
end
