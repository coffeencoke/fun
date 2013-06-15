module Common
  class InsertionSort
    def self.sort(*numbers)
      (1..numbers.size-1).each do |j|
        key = numbers[j]
        i = j - 1
        while i >= 0 && numbers[i] > key
          numbers[i+1] = numbers[i]
          i -= 1
        end
        numbers[i+1] = key unless j == i+1 # Only shift if shifting occurred
      end
      numbers
    end
  end
end
