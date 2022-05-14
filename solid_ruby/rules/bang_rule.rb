class BangRule < GameRule
  DIVIDE_BY = 7.to_s
  RETURN_VALUE = "Bang"

  def execute(game_number)
    return "" unless game_number.to_s.include?(DIVIDE_BY)
    RETURN_VALUE
  end
  
end