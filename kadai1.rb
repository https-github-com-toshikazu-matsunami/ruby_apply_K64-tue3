class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください

  def get_total_price (number) 
    def total_price 
    end
    if number > 3
      total_price = self.price * number - 10000
    else
      total_price = self.price * number
    end
  
   return "#{self.name} #{total_price}vnd"
 end
end

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000

# menu1に対してget_total_priceメソッドを呼び出してください

puts menu1.get_total_price(5)