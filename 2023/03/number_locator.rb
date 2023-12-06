class NumberLocator
  Number = Data.define(:value)

  def initialize(input)
    @input = input
  end

  def numbers
    rows.flat_map do |row|
      row.scan(/(\d+)/).flatten.map { |string| Number.new(value: string.to_i) }
    end
  end

  private

  def rows
    @input.split("\n")
  end
end
