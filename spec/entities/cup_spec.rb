require 'spec_helper'
describe Rabbits::Cup do
  it 'exists' do
    expect(Rabbits::Cup).to be_a Class
  end
  it 'initializes with an array of 13 die randomly ordered' do
    @cup = Rabbits::Cup.new
    result = @cup.die
    expect(result.length).to eq 13
  end
end
