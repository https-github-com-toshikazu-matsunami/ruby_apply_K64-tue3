class Menu
    attr_reader :name, :price
    def initialize(name:, price:)
        @name = name
        @price = price
    end
    def show_menu
        "#{name} #{price}"
    end
end

menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "Bánh mì", price: 20000)

puts menu1.show_menu
puts menu2.show_menu
puts menu3.show_menu
