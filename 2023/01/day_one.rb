require_relative "number_extractor"

class DayOne
  def self.solve(input)
    input
      .split("\n")
      .map { |line| NumberExtractor.new(line).as_numbers }
      .sum { |numbers| [numbers.first, numbers.last].join.to_i }
  end
end
