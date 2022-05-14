class DefaultBehavior
  
  def execute(game_number, result)
    return "" unless result.empty?
    game_number.to_s
  end

end