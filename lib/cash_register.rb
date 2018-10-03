class CashRegister
  attr_accessor :discount, :total, :title, :price, :quantity
  
  
  def initialize(discount = nil)
    @total = 0
    self.discount = discount
    @all = []
    @price = []
  end
  
  def total
    @total 
  end 
  
  def add_item(title, price, quantity = 1)
    @price << price
    if self.total > 0 
      self.total = self.total + (price*quantity)
    else
      self.total = price * quantity
    end
    quantity.times do 
    @all << title
    end
  end 
  
  def apply_discount
    if discount == nil || discount == 0 
      "There is no discount to apply."
    else
      amount = self.total
      self.total = amount - (amount * (self.discount/100.00))
      "After the discount, the total comes to $#{total.round}."
    end 
  end 
  
  def items
    @all
  end 
  
  def void_last_transaction
    self.total = self.total - @price[-1]
  end 
end 
