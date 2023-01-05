class Menu
  def initialize(name, price)
    @name = name
    @price = price
  end

  def printList
    puts("#{@name} #{@price}vnd")
  end

end

menu1=[]
menu1.push(Menu.new("Phở", 30000))
menu1.push(Menu.new("Bún chả", 40000))
menu1.push(Menu.new("Bánh mì", 20000))
menu1.each{|menu| menu.printList}