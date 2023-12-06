require "2023/03/number_locator"

RSpec.describe NumberLocator do
  subject(:number_locator) { NumberLocator.new(input) }
  let(:input) { File.read("spec/fixtures/2023/03/example.txt") }

  describe "#numbers" do
    it "returns data objects that have a value" do
      expect(number_locator.numbers).to match_array [
        have_attributes(value: 467, row: 0, col: 0, length: 3),
        have_attributes(value: 114, row: 0, col: 5, length: 3),
        have_attributes(value: 35, row: 2, col: 2, length: 2),
        have_attributes(value: 633, row: 2, col: 6, length: 3),
        have_attributes(value: 617, row: 4, col: 0, length: 3),
        have_attributes(value: 58, row: 5, col: 7, length: 2),
        have_attributes(value: 592, row: 6, col: 2, length: 3),
        have_attributes(value: 755, row: 7, col: 6, length: 3),
        have_attributes(value: 664, row: 9, col: 1, length: 3),
        have_attributes(value: 598, row: 9, col: 5, length: 3)
      ]
    end
  end
end
