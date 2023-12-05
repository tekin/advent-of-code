require "2023/02/day_two"

RSpec.describe DayTwo::Game do
  describe '.parse' do

    it 'returns a Game instance with the ID extracted from the input' do
      game = DayTwo::Game.parse("Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green")
      expect(game.id).to eql 5

      game = DayTwo::Game.parse("Game 35: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green")
      expect(game.id).to eql 35

      game = DayTwo::Game.parse("Game 835: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green")
      expect(game.id).to eql 835
    end
  end
end
