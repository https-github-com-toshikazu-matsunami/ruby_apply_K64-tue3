class Bingo
    attr_accessor :start, :_end, :character
    def initialize(start:, _end:,character:)
        @start, @_end, @character = start, _end, character
    end
    def rand
        return Random.rand(@start..@_end)
    end
    def get_character
        return @character
    end
end

array = []
array.push(Bingo.new(character: " B", start: 1, _end:15))
array.push(Bingo.new(character: " I", start: 16, _end:30))
array.push(Bingo.new(character: " N", start: 31, _end:45))
array.push(Bingo.new(character: " G", start: 46, _end:60))
array.push(Bingo.new(character: " O", start: 61, _end:75))

6.times do |i|
    line = ""
    array.each_with_index do |item, j|
        if j > 0 && j < 5
            line += "|"
        end
        if j != 2 || i != 3
            line += item.rand.to_s.rjust(2) + ""
        else
            line += "  "
        end
    end
    puts i == 0 ? array.map { |item| item.get_character}.join(' ') : line
end
