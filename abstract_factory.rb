require 'byebug'
class Chair
    # qtd pernas  
  def leg_count = raise('Not implement')
  def cushion? = raise('Not implement')
    # cushion- almofada
end

class Table
  def material = raise('Not implement')
end

class VintageChair < Chair
  def leg_count = 4
  def cushion? = true
end
# Vintage (product)
class VintageTable < Table
  def material = "madeira"
end

class ModernChair < Chair
  def leg_count = 3
  def cushion? = false  
end

class ModernTable < Table
  def material = "glass"
end

# Abstract Factory
# The abstract class defines the interface of the variant types
# Makes sure all subclases have the exact same behavior
class FurnitureFactory
  # Returns an abstract Chair
  def create_chair = raise('not implemented')
  # Returns an abstract Table
  def create_table = raise('not implemented')
end
# The variant type class decides the instance type
class ModernFurnitureFactory < FurnitureFactory
  def create_chair = ModernChair.new
  def create_table = ModernTable.new
end
# The variant type class decides the instance type
class VintageFurnitureFactory < FurnitureFactory
  def create_chair = VintageChair.new
  def create_table = VintageTable.new
end
def client_code(factory)
  chair = factory.create_chair
  table = factory.create_table
  puts "A cadeira tem #{chair.leg_count} pernas e #{chair.cushion? ? '' : 'no '} almofada."
  puts "A mesa é feita de #{table.material}."
end
debugger
# In action!
modern_factory = ModernFurnitureFactory.new
vintage_factory = VintageFurnitureFactory.new
client_code(modern_factory)
puts "-" * 72
client_code(vintage_factory) 