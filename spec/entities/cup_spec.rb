require 'spec_helper'
describe Rabbits::Cup do
	before do
    @cup = Rabbits::Cup.new
	end
  it 'exists' do
    expect(Rabbits::Cup).to be_a Class
  end
  it 'initializes with an array of 13 die randomly ordered' do
    result = @cup.die
    expect(result.length).to eq 13
  end

  it "has roll_face method that returns the outcome" do
		die = ['red', 'yellow', 'green']
		result = @cup.roll
		expect(result.count).to eq 3
		expect(result[0]).to match (/^meat|shot|green|yellow|red$/)
	end



end
