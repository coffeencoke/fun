class ArrayOfIntegers
  attr_reader :integers

  def initialize(*ints)
    @integers = ints
  end

  def largest_continuous_sum
    max = integers[0]
    cur = integers[0]

    integers[1..-1].each do |i|
      cur += i
      max = cur if cur >= max
    end

    max
  end
end
