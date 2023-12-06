require "2023/03/day_three"

RSpec.describe DayThree do
  context "the example input/output" do
    let(:input) { File.read('spec/fixtures/2023/03/example.txt') }

    it "solves the first part" do
      expect(DayThree.new(input).solve).to eql 4361
    end
  end
end
