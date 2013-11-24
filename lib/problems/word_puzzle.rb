module WordPuzzle
  def self.find_words(grid, word_list)
#    size = [width, height].max
    width = grid[0].size-1
    height = grid.size-1

    letters = {}
    0.upto(height) do |y|
      0.upto(width) do |x|
        width.downto(x) do |x1|
          word = grid[y][x..x1]
          letters[word] ||= []
          letters[word] << "#{y} #{x}"
        end

        height.downto(y) do |y1|
          horizontal_word = ""
          diagonal_word = ""
          y1.downto(y) do |y2|
            horizontal_word = "#{grid[y1][x]}#{horizontal_word}"
            diagonal_word = "#{grid[y2][x+y2-y]}#{diagonal_word}"
          end

          letters[horizontal_word] ||= []
          letters[horizontal_word] << "#{y} #{x}"
          letters[diagonal_word] ||= []
          letters[diagonal_word] << "#{y} #{x}"
          p diagonal_word
        end
      end
    end

    p letters

    coordinates = []
    word_list.each do |word|
      found = letters[word]
      if found.nil?
        coordinates << ""
      else
        found.each_with_index do |coord, i|
          if !coordinates.include?(coord) || i == found.size - 1
            coordinates << coord
            break
          end
        end
      end
    end
    coordinates
  end
end
