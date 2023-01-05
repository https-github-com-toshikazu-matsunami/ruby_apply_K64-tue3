class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def get_total_price(count)
    total_price = price * count
    total_price -= 10_000 if count > 2
    total_price
  end

  def infor
    puts "#{name}:  #{price}"
  end
end
class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end

  def infor
    puts "#{name}:  #{price} #{size}サイズ"
  end
end

menu1 = Menu.new('Phở', '30000')
menu2 = Menu.new('Bún chả', '40000')
menu3 = Menu.new('Bánh mì', '20000')
drink1 = Drink.new('Trà', '5000', 'S')
drink2 = Drink.new('Trà', '10000', 'M')
menus = [menu1, menu2, menu3, drink1, drink2]
menus.each do |m|
  m.infor
end
