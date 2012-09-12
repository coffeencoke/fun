# Fib
# 
# Generates the values of the Fibonacci Sequence for a given number of sequences
# http://en.wikipedia.org/wiki/Fibonacci_number
#
#   1.9.3p194 :010 > Fib.values(20)
#   => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765]
# 
module Fib
  def self.values(limit=9)
    (0..limit).map{|a| value(a) }
  end

  def self.value(n)
    n < 2 ? n : value(n-1) + value(n-2)
  end
end
