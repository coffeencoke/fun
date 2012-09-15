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
  
  def missing_int(source_array)
    missing = 0
    source_array.each do |i|
      missing ^= i
    end
    integers.each do |i|
      missing ^= i
    end
    missing
  end
end
