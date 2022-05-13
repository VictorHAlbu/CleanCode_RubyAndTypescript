require "furniture/products/table"

module Furniture
  module Vintage
    class Table < Furniture::Products::Table
      def material = "madeira"
    end
    
  end
  
end