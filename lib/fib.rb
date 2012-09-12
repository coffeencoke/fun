class Fib
  def values
    (0..6).inject([]) do |vals, n|
      vals << if vals.size < 2
        vals.size + 1
      else
        vals[n-2] + vals[n-1]
      end
      vals
    end
  end
end

