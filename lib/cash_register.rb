require 'pry'

class CashRegister
  attr_accessor :total, :title, :price, :items, :price_array, :items_array
  attr_reader :discount

# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_array = []
    @price_array = []

  end

 

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    # @total += @price
    @quantity = quantity
    @total += (@price * @quantity)

    
    @quantity.times do |i|
      @items_array.push(@title) 
    end
    @price_array << @price
  end

  def items
    @items_array
  end


  def apply_discount
    if discount !=0
      @total = (@total * 0.8)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction 
    @total -= @price_array.last

  end

  # binding.pry
end
