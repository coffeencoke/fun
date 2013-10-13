module NoOrderOfOperations
  def self.evaluate(expression)
    numbers = expression.split(/[-+*]/).map(&:to_i)
    operators = expression.split(/\d/).reject{|a| a == '' }
    total = numbers[0]
    numbers[0..-2].each_with_index do |number, i|
      total = total.send(operators[i], numbers[i+1])
    end
    total
  end
end
