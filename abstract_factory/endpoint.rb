$:.unshift(__dir__) unless $:.include?(__dir__)

require "furniture/factory"

class Endpoint

  def self.category(params)
    category = params["category"].to_sym
    factory = Furniture::Factory.for(category)

    chair = factory.create_chair
    table = factory.create_table
    
    puts <<~TEXT
    A cadeira tem #{chair.leg_count} pernas e #{chair.cushion? ? '' : 'não '} almofada.
    A mesa é feita de #{table.material}.
    TEXT
  end
  
end

params = { "category" => "modern" }
Endpoint.category(params)