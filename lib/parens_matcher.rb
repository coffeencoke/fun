class ParensMatcher
  def initialize(str)
    @str = str
    @balanced = true
    @number_of_opened_parens = 0
  end

  def balanced?
    if parens.first == ')' || parens.last == '('
      @balanced = false
    end

    if @balanced
      parens.each_with_index do |paren, i|
        paren == '(' ? @number_of_opened_parens += 1 : @number_of_opened_parens -= 1
      end
    end

    @balanced && @number_of_opened_parens == 0
  end

  def checking_if_balanced?
    @balanced == true || @complete == false
  end

  def parens
    @parens ||= @str.scan(regex_for_parens)
  end

  def regex_for_parens
    /[\(\)]/
  end
end
