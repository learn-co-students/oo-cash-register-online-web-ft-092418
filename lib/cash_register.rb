



class  CashRegister
  attr_accessor :total , :discount, :item_list , :last_transaction
  
  
  def initialize(discount = 0.0)
    @total = 0
    @discount = discount
    @item_list=[]
  end
  
  
  def add_item(item,price,quantity=1)
    for i in 1..quantity
     @item_list.push(item)
    end
    self.last_transaction= { item: item , price: price, quantity: quantity}
    @total += price*quantity
  end
  
  def apply_discount
    self.total*=(1.0-discount/100.0)
    
    if discount>0.0
    "After the discount, the total comes to $#{800}."
  else
    "There is no discount to apply."
  end
  
end
  
  def items
    self.item_list
  end
    
  
  def void_last_transaction

  @item_list.pop(self.last_transaction[ :quantity])
  @total-=self.last_transaction[ :quantity] * self.last_transaction[ :price]
  
  
  end

  
  
  
end