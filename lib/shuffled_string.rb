class ShuffledString
  attr_reader :string

  def initialize(str)
    @string = str
  end

  def shuffled_from?(*strs)
    str_match = string

    # return true if boths string combined directly is a match
    return true if str_match == strs.join("")

    # remove the full string for each if it is found
    strs.each do |str|
      str = '' if str_match.gsub!(str, '')
    end

    # all other chars remaining check order for remaining source string chars
    str_match.each_char do |char|
      matched = false
      strs.each_with_index do |str, i|
        if str[0] == char
          strs[i] = str.length == 1 ? "" : str[1..-1]
          matched = true
          break
        end
      end
      return false if !matched
    end

    strs.all?(&:empty?)
  end
end
