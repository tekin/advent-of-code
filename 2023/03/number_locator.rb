require "strscan"

class NumberLocator
  NUMBER_MATCH = /(\d+)/
  Number = Struct.new(:value, :row, :col, :length)

  def initialize(input)
    @input = input
  end

  def numbers
    rows.each_with_index.map do |line, row|
      scanner = StringScanner.new(line)
      numbers = []

      until scanner.eos? do
        break unless scanner.check_until(NUMBER_MATCH)

        value = scanner.matched
        # advance to the first digit
        scanner.scan_until /\d/
        # use the position to grab the column for the first digit
        col = scanner.pos - 1
        # advance to the end of the current number (first non-digit)
        scanner.skip_until /\D/
        # Capture our Number object
        numbers << Number.new(value: value.to_i, row:, col:, length: value.length)
      end

      numbers
    end.flatten
  end

  private

  def rows
    @input.split("\n")
  end
end
