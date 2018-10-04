class CashRegister
 attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  #returns the current total
  def total
    @total
  end
  
  #increases the total without forgetting about the current total
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do 
      items << title
  end
  @last_transaction = price * quantity
end
  
  #applies a discount if given and returns the total
  #if there is no discount, 
  #a message claiming there is no discount to apply si returned
  def apply_discount
    if @discount 
      @total = total - (total * (@discount/100.00))
      "After the discount, the total comes to $#{total.to_i}."
      else
        "There is no discount to apply."
    end
  end
 
 #returns an array containing all of the items in the cart 
  def items
    @items
  end
  
  #subtracts the last transaction from the total
  def void_last_transaction
    @total = @total - @last_transaction
  end
end

