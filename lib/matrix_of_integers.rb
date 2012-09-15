require 'matrix'

#
# Matrix of integers.
#
# View the specs for this class for more info
#
class MatrixOfIntegers
  attr_reader :data, :full_boundary, :cache_of_sums

  def initialize(data)
    @data = data
    @full_boundary = boundary.new 0, data[0].size-1, data.size-1, 0
  end

  def sum_of_region(top_left_coordinates, bottom_right_coordinates)
    if cache_of_sums
      sum_of_region_from_cache(top_left_coordinates, bottom_right_coordinates)
    else
      calculate_sum_of_region(top_left_coordinates, bottom_right_coordinates)
    end
  end

  def calculate_sum_of_region(top_left_coordinates, bottom_right_coordinates)
    boundary = boundary_from_coordinates(top_left_coordinates, bottom_right_coordinates)

    sum = 0

    data[boundary.top..boundary.bottom].each do |row|
      row[boundary.left..boundary.right].each do |cell|
        sum += cell
      end
    end
    sum
  end

  def cache_all_sums
    @cache_of_sums = ::Matrix.build(full_boundary.bottom+1, full_boundary.right+1) do |row,col|
      calculate_sum_of_region({ x: 1, y: 1 }, { x: col+1, y: row+1 })
    end
  end

  def sum_of_region_from_cache(top_left_coordinates, bottom_right_coordinates)
    boundary = boundary_from_coordinates(top_left_coordinates, bottom_right_coordinates)

    if boundary.left == 0 || boundary.right == 0
      top_left = left = top = 0
    else
      top_left = cache_of_sums[boundary.top - 1, boundary.left - 1]
      left = cache_of_sums[boundary.bottom, boundary.left - 1]
      top = cache_of_sums[boundary.top - 1, boundary.right]
    end

    bottom_right = cache_of_sums[boundary.bottom, boundary.right]

    bottom_right - top - left + top_left
  end

  def boundary_from_coordinates(top_left, bottom_right)
    boundary.new(
      top_left[:y] - 1, 
      bottom_right[:x] - 1, 
      bottom_right[:y] - 1,
      top_left[:x] - 1
    )
  end

  def boundary
    @boundary ||= Struct.new(:top, :right, :bottom, :left)
  end
end
