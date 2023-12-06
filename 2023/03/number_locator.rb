class NumberLocator
  Number = Data.define(:value, :row)

  def initialize(input)
    @input = input
  end

  def numbers
    rows.each_with_index.map do |row, index|
      row.scan(/(\d+)/).flatten.map { |string| Number.new(value: string.to_i, row: index) }
    end.flatten
  end

  private

  def rows
    @input.split("\n")
  end
end
