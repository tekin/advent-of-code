require "2023/03/number_locator"

RSpec.describe NumberLocator do
  subject(:number_locator) { NumberLocator.new(input) }
  let(:input) { File.read("spec/fixtures/2023/03/example.txt") }

  describe "#numbers" do
    it "returns data objects that have a value" do
      expect(number_locator.numbers).to match_array [
        have_attributes(value: 467, row: 0),
        have_attributes(value: 114, row: 0),
        have_attributes(value: 35, row: 2),
        have_attributes(value: 633, row: 2),
        have_attributes(value: 617, row: 4),
        have_attributes(value: 58, row: 5),
        have_attributes(value: 592, row: 6),
        have_attributes(value: 755, row: 7),
        have_attributes(value: 664, row: 9),
        have_attributes(value: 598, row: 9)
      ]
    end
  end
end
