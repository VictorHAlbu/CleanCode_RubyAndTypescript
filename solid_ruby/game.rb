class Game
  
  def initialize(game_number, rules, default_behavior)
    @resut = ''
    @game_number = game_number
    @rules = rules
    @default_behavior = default_behavior
  end

  def play
    @rules.each do |rule|
      @resut << rule.execute(@game_number)
    end
    @resut << @default_behavior.execute(@game_number, @resut)
    @resut
  end

end