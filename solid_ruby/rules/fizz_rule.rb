class FizzRule < GameRule
  
  DIVIDE_BY = 3
  RETURN_VALUE = "Fizz"

  def execute(game_number)
    return "" unless game_number.modulo(DIVIDE_BY).zero?
    RETURN_VALUE
  end

end