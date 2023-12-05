require "2023/02/day_two"

RSpec.describe "DayTwo" do
  context "the example input/output" do
    let(:input) { File.read('spec/fixtures/2023/02/example.txt') }
    subject(:output) { DayTwo.solve(input) }

    it { is_expected.to eql 8 }
  end
end
