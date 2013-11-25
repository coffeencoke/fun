module WordPuzzle
  def self.add_word(list, word, y, x)
    if word
      list[word] ||= []
      list[word] << "#{y} #{x}"
    end
  end

  def self.find_words(grid, word_list)
    width = grid[0].size-1
    height = grid.size-1

    letters = {}
    0.upto(height) do |y|
      0.upto(width) do |x|
        width.downto(x) do |depth|
          add_word letters, grid[y][x..depth], y, x
        end

        height.downto(y) do |depth|
          horizontal_word = ""
          diagonal_word = ""
          depth.downto(y) do |y2|
            if grid[depth]
              horizontal_word = "#{grid[y2][x]}#{horizontal_word}"
              diagonal_word = "#{grid[y2][x+y2-y]}#{diagonal_word}"
            end
          end

          add_word letters, horizontal_word, y, x
          add_word letters, diagonal_word, y, x
        end
      end
    end

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
