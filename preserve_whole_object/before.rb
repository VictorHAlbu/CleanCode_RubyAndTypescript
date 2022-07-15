class Item
  def initialize(name, price, date); end
end

class Store
  def initialize
    @items = []
  end

  def add_item(item); end

  def cotain?(item)
    !!find(item.name, item.price, item.date)
  end

  def find(name, price, date)
    @items.find do |item|
      item.name == name &&
      item.price == price &&
      item.date == date
    end
  end

  
end