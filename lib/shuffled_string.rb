class ShuffledString
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def shuffled_from?(str1, str2)
    str_match = str

    # return true if boths string combined directly is a match
    return true if str_match == str1+str2 || str_match == str2+str1

    # remove the full string for each if it is found
    str1 = '' if str_match.gsub!(str1, '')
    str2 = '' if str_match.gsub!(str2, '')

    # all other chars remaining check order for remaining source string chars
    str_match.each_char do |char|
      if str1[0] == char 
        str1 = str1.length == 1 ? "" : str1[1..-1]
      elsif str2[0] == char
        str2 = str2.length == 1 ? "" : str2[1..-1]
      else
        return false
      end
    end

    str1.empty? && str2.empty?
  end
end
