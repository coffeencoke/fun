module Fib
  def self.values(limit=9)
    [0,1] + (0..limit-2).inject([]) do |vals, n|
      vals << value(vals[n-2], vals[n-1])
    end
  end

  def self.value(back_two_values, back_one_value)
    back_two_values ||= 0
    back_one_value ||= 1
    back_two_values + back_one_value
  end
end
