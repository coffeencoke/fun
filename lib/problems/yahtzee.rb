module Yahtzee
  def self.max_points(*numbers)
    scores = {
      1 => 0,
      2 => 0,
      3 => 0,
      4 => 0,
      5 => 0,
      6 => 0
    }
    highest = 0

    numbers.each do |number|
      scores[number] += number
      if scores[number] > highest
        highest = scores[number]
      end
    end
    highest
  end
end
