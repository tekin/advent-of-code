class DayOne
  def self.solve(input)
    input
      .split("\n")
      .map { |line| line.scan(/\d/) }
      .sum { |numbers| [numbers.first, numbers.last].join.to_i }
  end
end
