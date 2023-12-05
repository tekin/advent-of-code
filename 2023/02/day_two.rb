class DayTwo
  def self.solve(input)
  end

  class Game
    GAME_ID_MATCHER = /^Game (\d+):/
    attr_reader :id

    def self.parse(line)
      id = GAME_ID_MATCHER.match(line)[1].to_i
      new(id:)
    end

    def initialize(id:)
      @id = id
    end
  end
end
