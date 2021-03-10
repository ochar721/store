class Market
  attr_reader :name,
              :vendors

  def initialize(name)
    @name    = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.items_sold.include?(item)
    end
  end

  def sorted_items_list
    @vendors.flat_map do  |vendor|
      vendor.sorted_items
    end.sort
  end

  def total_inventory
    # {items: => inventory.keys
    #  {quantity:  @vendors.total_amount, vendors: @vendors }}
  end
  #trying to envision this
end
