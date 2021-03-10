class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name      = name
    @inventory = Hash.new(0)
  end

  def add_item(item)
    @inventory << item
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item,  amount)
    @inventory[item] += amount
  end

  def items_sold
    @inventory.map do |item, amount|
      item.name
    end
  end

  def potential_revenue
    @inventory.sum do |item, amount|
      item.price * amount
    end
  end

  def sorted_items
    @inventory.flat_map do |item, amount|
      item.name
    end.uniq
  end
end
