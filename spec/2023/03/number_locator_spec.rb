require "2023/03/number_locator"

RSpec.describe NumberLocator do
  subject(:number_locator) { NumberLocator.new(input) }
  let(:input) { File.read("spec/fixtures/2023/03/example.txt") }

  describe "#numbers" do
    it "returns numbers found in the input" do
      expect(number_locator.numbers).to eql [
        467,
        114,
        35,
        633,
        617,
        58,
        592,
        755,
        664,
        598
      ]
    end
  end
end
