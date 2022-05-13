require "furniture/products/table"

module Furniture
  module Modern
    class Table < Furniture::Products::Table
      def material = "vidro"
    end
  end
end