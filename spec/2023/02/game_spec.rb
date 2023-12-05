require "2023/02/day_two"

RSpec.describe DayTwo::Game do
  describe '.parse' do

    it 'returns a Game instance with the ID and max cube counts extracted from the input' do
      game = DayTwo::Game.parse("Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green")
      expect(game.id).to eql 5
      expect(game.max_red).to eql 6
      expect(game.max_blue).to eql 2
      expect(game.max_green).to eql 3

      game = DayTwo::Game.parse("Game 35: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red")
      expect(game.id).to eql 35
      expect(game.max_red).to eql 14
      expect(game.max_blue).to eql 15
      expect(game.max_green).to eql 3

      game = DayTwo::Game.parse("Game 835: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green")
      expect(game.id).to eql 835
      expect(game.max_red).to eql 4
      expect(game.max_blue).to eql 6
      expect(game.max_green).to eql 2
    end
  end

  context 'with Game 1' do
    it 'returns the max cube counts and expected power' do
      game = DayTwo::Game.parse("Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green")

      expect(game.max_red).to eql 4
      expect(game.max_green).to eql 2
      expect(game.max_blue).to eql 6

      expect(game.power).to eql 48
    end
  end

  context 'with Game 2' do
    it 'returns the max cube counts and expected power' do
      game = DayTwo::Game.parse("Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue")

      expect(game.max_red).to eql 1
      expect(game.max_green).to eql 3
      expect(game.max_blue).to eql 4

      expect(game.power).to eql 12
    end
  end

  context 'with Game 3' do
    it 'returns the max cube counts and expected power' do
      game = DayTwo::Game.parse("Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red")

      expect(game.max_red).to eql 20
      expect(game.max_green).to eql 13
      expect(game.max_blue).to eql 6

      expect(game.power).to eql 1560
    end
  end
end
