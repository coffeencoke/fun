class Matrix
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def sum_of_region(top_left_coordinates, bottom_right_coordinates)
    left_boundary = top_left_coordinates[:x] - 1
    top_boundary = top_left_coordinates[:y] - 1
    right_boundary = bottom_right_coordinates[:x] - 1
    bottom_boundary = bottom_right_coordinates[:y] - 1

    sum = 0

    data[top_boundary..bottom_boundary].each do |row|
      row[left_boundary..right_boundary].each do |cell|
        sum += cell
      end
    end
    sum
  end
end
