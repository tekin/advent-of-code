require "2023/01/number_extractor"

describe NumberExtractor do
  describe "#as_numbers" do
    it "extracts numbers, converting numbers-as-words to digits" do
      expect(NumberExtractor.new("abcone2threexyz").as_numbers).to eq ["1", "2", "3"]
      expect(NumberExtractor.new("7pqrstsixteen").as_numbers).to eq ["7", "6"]
    end

    it "handles overlapping numbers-as-words" do
      expect(NumberExtractor.new("eightwoxz").as_numbers).to eq ["8", "2"]
      expect(NumberExtractor.new("oneighthree").as_numbers).to eq ["1", "8", "3"]
      expect(NumberExtractor.new("sevenine").as_numbers).to eq ["7", "9"]
    end
  end
end
