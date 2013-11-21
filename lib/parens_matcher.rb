class ParensMatcher
  def initialize(str)
    @str = str
  end

  def balanced?
    parens_stack = []

    parens.each do |p|
      if p == "("
        parens_stack << p
      elsif p == ")" && parens_stack.pop != "("
        return false
      end
    end
    parens_stack.empty?
  end

  def parens
    @parens ||= @str.scan(regex_for_parens)
  end

  def regex_for_parens
    /[\(\)]/
  end
end
