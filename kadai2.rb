class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  def info
    return "#{self.name} #{self.price}vnd"
  end
end

menus = []
menu1 = Menu.new('Phở', 30000)
menus << menu1
menu2 = Menu.new('Bún chả', 40000)
menus << menu2
menu3 = Menu.new('Bánh mì', 20000)
menus << menu3

menus.each do |menu|
  puts menu.info
end
