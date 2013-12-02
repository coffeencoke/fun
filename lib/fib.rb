# Fib
# 
# Generates the values of the Fibonacci Sequence for a given number of sequences
# http://en.wikipedia.org/wiki/Fibonacci_number
#
#   Fib.values(20)
#   => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765]
#
#   Fib.value(119)
#   => 3311648143516995021701120
# 
module Fib
  SQRT_OF_FIVE=Math.sqrt(5)
  GOLDEN_RATIO = (1 + SQRT_OF_FIVE)/2

  def self.values(limit=9)
    (0..limit).map{|a| value(a) }
  end

  def self.value(n)
    if n < 2
      n
    else
      ((GOLDEN_RATIO**n / SQRT_OF_FIVE) + 0.5).floor
    end
  end
end
