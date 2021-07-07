class CashRegister

    attr_accessor :total, :discount, :price, :items

    def initialize(discount = 0.0)
       self.total = 0 
       self.discount = discount.to_f
       self.items = []
    end
    
    def add_item(title, price, quantity = 1)
        self.price = price.to_f 
        self.price = self.price*quantity
        self.total += self.price
 
        for i in 1..quantity do 
            self.items << title 
        end 

    end 

    def apply_discount
        if self.discount != 0 
            self.total = self.total - (self.total * (self.discount / 100))
            "After the discount, the total comes to $#{self.total.to_i}."
        else 
            "There is no discount to apply."
        end 
    end 

    def void_last_transaction
        self.total = 0
    end 
end 