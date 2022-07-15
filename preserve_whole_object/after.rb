class Item
  def initialize(name, price, date) 
    @name = name
    @price = price
    @date = date
  end

  def ==(outher_item)
    @name == outher_item.name &&
    @price == outher_item.price &&
    @date == outher_item.date
  end
end

class Store
  def initialize 
    @items = []
  end

  def add_item(item)
    items << item
  end

  def cotain? item
    !!find(item)
  end

  def find(item)
    @items.find { |i| i == item }
  end
end