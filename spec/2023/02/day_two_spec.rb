require "2023/02/day_two"

RSpec.describe DayTwo do
  context "the example input/output" do
    let(:input) { File.read('spec/fixtures/2023/02/example.txt') }
    let(:cube_counts) { {red: 12, green: 13, blue: 14} }
    subject(:output) { DayTwo.solve(input, **cube_counts) }

    it { is_expected.to eql 8 }
  end
end
