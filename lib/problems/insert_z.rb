# InsertZ Problem at http://community.topcoder.com/stat?c=problem_statement&pm=12700&rd=15699
class InsertZ
  def self.can_transform?(init, goal)
    goal.gsub("z", "") == init ? "Yes" : "No"
  end

  def self.long_way_can_transform?(init, goal)
    new_string = ""
    shove = 0

    if init <= goal
      goal.split("").each_with_index do |goal_char, i|
        char = init[i - shove]
        if char == goal_char
          new_string << char
        elsif goal_char == 'z'
          new_string << 'z'
          shove += 1
        end
      end
    end

    new_string == goal ? "Yes" : "No"
  end
end
