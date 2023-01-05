class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o
  
  def initialize
    @b = (1..15).to_a.sample(5)
    @i = (16..30).to_a.sample(5)
    @n = (31..45).to_a.sample(5)
    @n[2] = ""
    @g = (46..60).to_a.sample(5)
    @o = (61..75).to_a.sample(5)
  end

  def show_sheet
    puts "   B  |   I  |   N  |   G  |   O  "
    for j in 0..4 do
      row = []
      [b,i,n,g,o].each do |character|
        row << character[j]
      end
        puts "  #{format('%2s',row[0])}  |  #{format('%2s',row[1])}  |  #{format('%2s',row[2])}  |  #{format('%2s',row[3])}  |  #{format('%2s',row[4])}  "
    end
  end    

  
=begin
    5.times do |j|
      [b,i,n,g,o].each do |column|
        card += column[j].to_s.rjust(2) + "|"
      end
      card[-3..-1] = "\n"
    end
=end

  
end

sheet1 = Bingo.new
sheet1.show_sheet