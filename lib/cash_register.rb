require "pry"

class CashRegister 
  attr_accessor :total, :discount, :items, :last_transaction 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end 
  
  def add_item(item, price, quantity = 1)
    quantity.times { @items << item }
    @last_transaction = price * quantity
    @total +=  price * quantity 
  end 
  
  def apply_discount
    if discount == 0 
      "There is no discount to apply."
    else 
      @total *= (1 - (discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    end 
  end 
  
  def void_last_transaction
    @total -= last_transaction
  end 
  
end 
