class DayTwo
  def self.solve(input)
  end

  class Game
    GAME_ID_MATCHER = /^Game (\d+):/
    attr_reader :id, :max_red, :max_green, :max_blue

    def self.parse(line)
      rounds = line.split(": ").last.split("; ")

      id = GAME_ID_MATCHER.match(line)[1].to_i
      max_red = rounds.map { |round| /(\d+) red/.match(round); $1.to_i }.max
      max_green = rounds.map { |round| /(\d+) green/.match(round); $1.to_i }.max
      max_blue = rounds.map { |round| /(\d+) blue/.match(round); $1.to_i }.max

      new(id:, max_red:, max_green:, max_blue:)
    end

    def initialize(id:, max_red:, max_green:, max_blue:)
      @id = id
      @max_red = max_red
      @max_green = max_green
      @max_blue = max_blue
    end
  end
end
