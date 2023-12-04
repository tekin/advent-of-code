require "2023/01/day_one"

RSpec.describe "DayOne" do
  context "the first example input/output" do
    let(:input) { File.read('spec/fixtures/2023/01/example-1.txt') }
    subject(:output) { DayOne.solve(input) }

    it { is_expected.to eql 142 }
  end

  context "the second example input/output" do
    let(:input) { File.read('spec/fixtures/2023/01/example-2.txt') }
    subject(:output) { DayOne.solve(input) }

    it { is_expected.to eql 281 }
  end
end
