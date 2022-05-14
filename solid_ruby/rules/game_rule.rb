class GameRule

  def self.create_rule(rule_name)
    
    case rule_name
    when "Fizz"
      return FizzRule.new   
    when "Buzz"
      return BuzzRule.new   
    when "Bang"
      return BangRule.new
    end
  end 

  def execute
    raise NotImplementedError
  end
  
end