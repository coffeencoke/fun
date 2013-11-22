class MinPriorityQueue
  Node = Struct.new :value

  def empty?
    true
  end

  def add(value)
    @root = Node.new value
  end

  def peak
    @root.value if @root
  end

  def pop
    peak.tap { @root = nil }
  end
end
