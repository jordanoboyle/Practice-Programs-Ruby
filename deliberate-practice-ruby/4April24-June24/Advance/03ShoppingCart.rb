# 1. Write a ShoppingCart class that stores an array of items 
# with methods to add an item, remove an item, and display all the items.

class ShoppingCart
  attr_reader :items
  attr_writer :items
  
  def initialize(items)
    @items = items
  end

  def add(item)
    @items << item
  end

  def remove(item)
    @items.delete(item)
  end

  def display
    @items.each {|n| p n}
  end
end

cart1 = ShoppingCart.new(["fish", "cheese", "tortillas", "apples", "potato chips"])

cart1.display

cart1.remove("cheese")
# p cart1

cart1.items.delete("fish")

p cart1