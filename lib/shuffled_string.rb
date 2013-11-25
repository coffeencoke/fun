class ShuffledString
  attr_reader :string

  def initialize(str)
    @string = str
  end

  def shuffled_from?(*strs)
    chars = {}

    strs.each do |str|
      str.each_char do |char|
        chars[char] ||= 0
        chars[char] += 1
      end
    end

    string.each_char do |char|
      if chars[char] && chars[char] > 1
        chars[char] -= 1
      elsif !chars.delete(char)
        return false
      end
    end

    chars.empty?
  end
end
