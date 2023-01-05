class Bingo
   attr_accessor :bingo_board, :letters
  def initialize
    @letters=["B","I","N","G","O"]
    @bingo_board = [5.times.map{rand(1..15)}, 5.times.map{rand(16..30)}, 5.times.map{rand(31..45)}, 5.times.map{rand(46..60)}, 5.times.map{rand(61..75)}].transpose
    bingo_board[2][2] = " "
  end

   def display_board
    letters.each {|i| print i.to_s.ljust(4)}
      print"\n"
    bingo_board.each { |a|  a.each { |i| print i.to_s.ljust(4) }
    print"\n"}
  end
  end
bingo = Bingo.new
bingo.display_board