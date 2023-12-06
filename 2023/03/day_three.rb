require_relative 'number_locator'

class DayThree
  def initialize(input)
    @input = input
    @rows = input.split("\n")
    @numbers = NumberLocator.new(input).numbers
  end

  def solve
    part_numbers.sum(&:value)
  end

  def part_numbers
    @numbers.select do |number|
      actual_row_symbol_check(number) || previous_row_symbol_check(number) || post_row_symbol_check(number)
    end
  end

  private

  def actual_row_symbol_check(number)
    row = @rows[number.row]
    end_position = number.col + number.length

    # check the position before
    (number.col > 0 && has_symbol?(row[number.col])) ||
      # check the position after
      has_symbol?(row[end_position])
  end

  def previous_row_symbol_check(number)
    return false if number.row.zero? # first row

    start_position = (number.col-1).clamp(0..)
    end_position = start_position + number.length + 1
    characters_to_check = @rows[number.row - 1][start_position..end_position]

    has_symbol? characters_to_check
  end

  def post_row_symbol_check(number)
    return false if number.row == @rows.size - 1 # last row

    start_position = (number.col-1).clamp(0..)
    end_position = start_position + number.length + 1
    characters_to_check = @rows[number.row + 1][start_position..end_position]

    has_symbol? characters_to_check
  end

  def has_symbol?(string)
    /[^\w\.]/.match?(string)
  end
end
