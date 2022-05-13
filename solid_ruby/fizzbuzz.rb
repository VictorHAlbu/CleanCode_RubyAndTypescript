class Game
  RESULT_MAP = {
    3 => "Fizz",
    5 => "Buzz"
  }

  def initialize(game_number)
    @resut = ""
    @game_number = game_number
  end

  def play
    RESULT_MAP.each do |divisible, value|
      @resut << value if @game_number.modulo(divisible).zero?
    end
    @resut = @game_number if @resut.empty?
    @resut
  end

end

game_number = ARGV[0].to_i

game = Game.new(game_number)

puts game.play