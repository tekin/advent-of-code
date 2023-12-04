class NumberExtractor
  NUMBERS_REGEXP = /(\d|on(?=e)|tw(?=o)|thre(?=e)|four|fiv(?=e)|six|seve(?=n)|eigh(?=t)|nin(?=e))/
  WORDS_TO_NUMBERS = {
    "on" => "1",
    "tw" => "2",
    "thre" => "3",
    "four" => "4",
    "fiv" => "5",
    "six" => "6",
    "seve" => "7",
    "eigh" => "8",
    "nin" => "9"
  }

  def initialize(input)
    @input = input
  end

  def extract
    number_matches.map { |string| is_digit?(string) ? string : WORDS_TO_NUMBERS.fetch(string) }
  end

  private

  def number_matches
    @input.scan(NUMBERS_REGEXP).flatten
  end

  def is_digit?(string)
    Integer(string) rescue false
  end
end
