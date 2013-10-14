module Quipu
  def self.read_knots(knots)
    number = ""
    running_number = 0
    previous_value = nil

    knots[1..-1].each_char do |node|
      running_number += 1 if node == "X"
      number += "0" if node == "-" && previous_value == "-"
      if node == "-" && previous_value == "X"
        number += running_number.to_s
        running_number = 0
      end
      previous_value = node
    end
    number.to_i
  end
end
