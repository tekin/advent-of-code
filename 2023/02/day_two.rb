class DayTwo
  attr_reader :red, :green, :blue

  def self.solve(input, red:, green:, blue:)
    new(input, red:, green:, blue:).solve
  end

  def initialize(input, red:, green:, blue:)
    @games = parse_input(input)
    @red = red
    @green = green
    @blue = blue
  end

  def solve
    possible_games.sum(&:id)
  end

  def sum_of_powers
    @games.sum(&:power)
  end

  private

  def possible_games
    @games.select { |game| game.max_red <= red && game.max_blue <= blue && game.max_green <= green  }
  end

  def parse_input(input)
    input.split("\n").map { |line| Game.parse(line) }
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

    def power
      max_red * max_green * max_blue
    end
  end
end
