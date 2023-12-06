class NumberLocator
  def initialize(input)
    @input = input
  end

  def numbers
    rows.flat_map do |row|
      row.scan(/(\d+)/).flatten.map(&:to_i)
    end
  end

  private

  def rows
    @input.split("\n")
  end
end
