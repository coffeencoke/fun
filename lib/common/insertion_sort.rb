module Common
  class InsertionSort
    def self.sort(*numbers)
      (2..numbers.size) do |j|
        key = numbers[j]
        i = j-1
        while i > 0 && numbers[i] > key
          numbers[i+1] = numbers[i]
          i -= 1
        end
        numbers[i+1] = key
      end
    end
  end
end
