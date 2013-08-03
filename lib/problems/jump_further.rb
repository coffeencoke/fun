class JumpFurther
  # JumpFurther problem from http://community.topcoder.com/stat?c=problem_statement&pm=12300
  # You can jump 1, 2, or 3 steps for n times. You cannot jump on the bad step
  # What is the furthest step you can go?
  #
  # I do not understand the example where args are 3, 3.  My understanding of the
  # problem statement would yield a return value of 4, but it returns 5.
  #
  # I've reviewed the problem statement and I do not see the rule that describes the
  # case where you should jump 1 step less than X if the current step is the same
  # as the broken step, however, this implementation satisfies the examples.
  def self.furthest(n, bad_step)
    current_step = 0
    (1..n).each do |jump_number|
      current_step += jump_number
      current_step -= 1 if current_step == bad_step
      jump_number  += 1
    end
    current_step
  end
end
