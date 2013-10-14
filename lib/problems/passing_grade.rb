module PassingGrade
  def self.points_needed(earned, possible, final_exam)
    possible_points = possible.inject{|sum, a| sum + a } + final_exam
    current_points = earned.inject{|sum, a| sum + a }
    score = (minimum_percentage_required * possible_points - current_points).ceil
    if score > final_exam
      -1
    elsif score < 0
      0
    else
      score
    end
  end

  def self.minimum_percentage_required
    0.65
  end
end
