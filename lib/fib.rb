class Fib
  def rows
    [row(nil)]
  end

  def row(previous_row)
    return [1] if previous_row.nil?
  end
end
