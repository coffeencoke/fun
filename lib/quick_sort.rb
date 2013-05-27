class QuickSort
  attr_accessor :array

  def initialize(array)
    self.array = array
  end

  def call
    quick_sort(1, array.size - 1)
    array
  end

  private

  def quick_sort(left, right)
    if left < right
      pivot_index = left + 1
      new_pivot_index = partition(left, right, pivot_index)
      quick_sort(left, new_pivot_index - 1)
      quick_sort(new_pivot_index + 1, right)
    end
  end

  def partition(left, right, pivot_index)
    pivot_value = array[pivot_index]
    right_value = array[right]
    array[right] = pivot_value
    array[pivot_index] = right_value

    store_index = left
    (left..right-1).each do |i|
      i_val = array[i]
      if i_val < pivot_value
        array[i] = array[store_index]
        store_index += 1
      end
    end

    array[store_index] = array[right]

    store_index
  end
end
