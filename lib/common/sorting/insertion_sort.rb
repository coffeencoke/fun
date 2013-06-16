module Common
  # Time Complexity
  #   Worst: O(n2)
  #   Best: O(n)
  # 
  # Space Complexity
  #   Worst: O(1)
  #
  class InsertionSort
    attr_reader :array

    def initialize(array)
      @array = array
    end

    def call
      (1..array.size-1).each do |pivot_index|                           # Iterate through each index in order
        pivot_value = array[pivot_index]                                # Set the pivot value to the current pivot index
        current_index = pivot_index - 1                                 # Set the current indext to the one left to pivot index
        while current_index >= 0 && array[current_index] > pivot_value  # While current index is still a valid index and the value at that index is greater than the pivot value
          array[current_index+1] = array[current_index]                 # Move current index's value to right
          current_index -= 1                                            # Move current index left one
        end
                                                                        # Shift pivot value to the right of the current index, Only if shifting occurred
        array[current_index+1] = pivot_value unless pivot_index == current_index+1
      end
      array                                                             # Return the sorted array
    end
  end
end
