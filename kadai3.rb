class Menu
    attr_reader :name, :price
    def initialize(name:, price:)
        @name = name
        @price = price
    end
    def show_menu(count = 0)
        "#{name} #{price}"
    end
end

class Drink < Menu
    attr_reader :size
    def initialize(name:, price:, size:)
        super(name: name, price: price)
        @size = size
    end
    def show_menu(count = 0)
        "#{super} (#{size} サイズ)"
    end
end

menu1 = Menu.new(name: "Pho", price: 30000)
menu2 = Menu.new(name: "Bun cha", price: 40000)
menu3 = Menu.new(name: "Banh mi", price: 20000)

drink1 = Drink.new(name: "Tra", price: 5000, size: "S")
drink2 = Drink.new(name: "Tra", price: 10000, size: "M")

menus = [menu1, menu2, menu3]
drinks = [drink1, drink2]

menus.concat(drinks).each { |menu| puts menu.show_menu }
