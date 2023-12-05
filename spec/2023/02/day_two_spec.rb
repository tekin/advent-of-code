require "2023/02/day_two"

RSpec.describe DayTwo do
  context "the example input/output" do
    let(:input) { File.read('spec/fixtures/2023/02/example.txt') }
    let(:cube_counts) { {red: 12, green: 13, blue: 14} }

    it "solves the first part" do
      expect(DayTwo.solve(input, **cube_counts)).to eql 8
    end

    it "solves the second part" do
      expect(DayTwo.new(input, **cube_counts).sum_of_powers).to eql 2286
    end
  end
end
