class BuzzRule < GameRule
  DIVIDE_BY = 5
  RETURN_VALUE = "Buzz"

  def execute(game_number)
    return "" unless game_number.modulo(DIVIDE_BY).zero?
    RETURN_VALUE
  end
end