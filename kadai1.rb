class Menu
 attr_accessor :name
 attr_accessor :price
# get_total_priceメソッドを定義してください
  def get_total_price(count)
    discount = count >= 3 ? 10000 : 0
    total_price = (count * @price) - discount
    return "#{self.name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000

print "購入数を入力してください > "
number = gets.to_i
# menu1に対してget_total_priceメソッドを呼び出してください
puts menu1.get_total_price(number)
