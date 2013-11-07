module TallPeople
  def self.get_people(*rows)
    tallest_of_the_shortest = -1/0.0
    tallest_by_column = []

    rows.each_with_index do |people, row|
      shortest_from_row = 1/0.0
      people.split(" ").each_with_index do |person, column|
        height = person.to_i
        shortest_from_row = height if shortest_from_row > height
        tallest_by_column[column] = height if tallest_by_column[column].nil? || tallest_by_column[column] < height
      end
      tallest_of_the_shortest = shortest_from_row unless shortest_from_row < tallest_of_the_shortest
    end

    shortest_of_the_tallest = tallest_by_column.sort[0]

    [tallest_of_the_shortest, shortest_of_the_tallest]
  end
end
