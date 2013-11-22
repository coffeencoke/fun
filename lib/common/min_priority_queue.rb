class MinPriorityQueue
  Node = Struct.new :value

  def empty?
    true
  end

  def add(value)
    @root = Node.new value
  end

  def root
    @root.value if @root
  end
end
