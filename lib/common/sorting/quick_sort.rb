class QuickSort
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def call
    sort(array)
  end

  def sort(sub_array)
    sub_array.length <= 1 ? sub_array : quick_sort(sub_array)
  end

  private

  def quick_sort(sub_array)
    pivot = sub_array.pop

    less = []
    greater = []

    sub_array.each do |x|
      if x <= pivot
        less << x
      else
        greater << x
      end
    end

    sort(less) + [pivot] + sort(greater)
  end
end
