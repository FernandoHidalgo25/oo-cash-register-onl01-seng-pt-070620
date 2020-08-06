class CashRegister
  attr_accessor :total, :discount 
  
  def initialize(discount = 0)
    @items = []
    @total = 0 
    @discount = discount
    @last_item = []
  end
  
  def add_item(title, price, number= 1)
    @price = price
    self.total += price * number
    number.times do
    @items << title
    end 
<<<<<<< HEAD
    @last_item = price * number
  end 
  
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end 
  
  def void_last_transaction 
     @items.delete_at(-1)
    self.total = self.total - @last_item
=======
>>>>>>> db958946c5747f14b1fd8f9911332ea2eec1c1d2
  end 
  
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end 
  
   def void_last_transaction
    @total -= @price
  end
end 
