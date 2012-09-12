class Fib
  def values
    @values = []
    6.times do |i|
      if @values.empty?
        @values << 1
      elsif @values.size == 1
        @values << 2
      else
        @values << @values[i-2] + @values[i-1]
      end
    end
    @values
  end
end
