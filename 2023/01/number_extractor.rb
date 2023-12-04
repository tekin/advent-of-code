class NumberExtractor
  NUMBERS_REGEXP = /(\d|one|two|three|four|five|six|seven|eight|nine)/
  WORDS_TO_NUMBERS = {
    "one" => "1",
    "two" => "2",
    "three" => "3",
    "four" => "4",
    "five" => "5",
    "six" => "6",
    "seven" => "7",
    "eight" => "8",
    "nine" => "9"
  }

  def initialize(input)
    @input = input
  end

  def as_numbers
    as_strings.map do |string|
      is_digit?(string) ? string : WORDS_TO_NUMBERS.fetch(string)
    end
  end

  def as_strings
    @input.scan(NUMBERS_REGEXP).flatten
  end

  private

  def is_digit?(string)
    Integer(string) rescue false
  end
end
