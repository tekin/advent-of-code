require "2023/03/number_locator"

RSpec.describe NumberLocator do
  subject(:number_locator) { NumberLocator.new(input) }
  let(:input) { File.read("spec/fixtures/2023/03/example.txt") }

  describe "#numbers" do
    it "returns data objects that have a value" do
      expect(number_locator.numbers).to match_array [
        have_attributes(value: 467),
        have_attributes(value: 114),
        have_attributes(value: 35),
        have_attributes(value: 633),
        have_attributes(value: 617),
        have_attributes(value: 58),
        have_attributes(value: 592),
        have_attributes(value: 755),
        have_attributes(value: 664),
        have_attributes(value: 598)
      ]
    end
  end
end
