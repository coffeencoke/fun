module Common
  # Time Complexity
  #   Worst: O(n lg(n))
  #   Best: O(n lg(n))
  # 
  # Space Complexity
  #   Worst: O(n)
  #
  class MergeSort
    attr_reader :array

    def initialize(array)
      @array = array
    end

    def call
      merge_sort(array, 0, array.size-1)
      array
    end

    def merge_sort(subarray, left_index, right_index)
      if left_index < right_index                                                 # Do nothing if the indices are the same
        middle_index = (left_index + right_index) / 2                             # find the middle index
        merge_sort(subarray, left_index, middle_index)                            # divide and conquer left recursively
        merge_sort(subarray, middle_index + 1, right_index)                       # divide and conquer right recursively
        merge(subarray, left_index, middle_index, right_index)                    # combine
      end
    end

    def merge(subarray, left_index, middle_index, right_index)
      left_array = subarray[left_index..middle_index] + [1.0/0]                   # create the left array
      right_array = subarray[(middle_index + 1)..right_index] + [1.0/0]           # create the right array

      current_left_index = 0                                                      # start indices at 0
      current_right_index = 0
 
      (left_index..right_index).each do |current_pivot_index|                     # iterate through each index in the subarray
        if left_array[current_left_index] <= right_array[current_right_index]     # if left array's value is less
          subarray[current_pivot_index] = left_array[current_left_index]          # merge it into the main array in place
          current_left_index += 1                                                 # bump the left index
        else
          subarray[current_pivot_index] = right_array[current_right_index]        # otherwise, merge the right value to the main array in place
          current_right_index += 1                                                # bump the right value
        end
      end
    end
  end
end

