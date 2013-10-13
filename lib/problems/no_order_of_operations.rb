module NoOrderOfOperations
  def self.evaluate(expression)
    numbers = expression.split(/[-+*]/)
    operators = expression.split(/\d/)
    total = numbers[0].to_i
    numbers[0..-2].each_with_index do |number, i|
      total = total.send(operators[i+1], numbers[i+1].to_i)
    end
    total
  end
end
