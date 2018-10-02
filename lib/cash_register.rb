require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    i = quantity.to_i
    while i != 0
      @items << item
      i -= 1
    end
    total_price = price * quantity
    @last_transaction = total_price
    @total += total_price
  end
  
  def apply_discount
    if discount != 0
      dis = @total * (@discount.to_f / 100.00)
      @total -= dis
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total -= self.last_transaction
  end
end
