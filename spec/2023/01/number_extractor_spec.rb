require "2023/01/number_extractor"

describe NumberExtractor do
  describe "#as_strings" do
    it "extracts strings of digits and numbers-as-words" do
      expect(NumberExtractor.new("abcone2threexyz").as_strings).to eq ["one", "2", "three"]
      expect(NumberExtractor.new("7pqrstsixteen").as_strings).to eq ["7", "six"]
    end
  end

  describe "#as_numbers" do
    it "extracts numbers, converting numbers-as-words to digits" do
      expect(NumberExtractor.new("abcone2threexyz").as_numbers).to eq ["1", "2", "3"]
      expect(NumberExtractor.new("7pqrstsixteen").as_numbers).to eq ["7", "6"]
    end
  end
end
