class MinPriorityQueue
  Node = Struct.new :value, :next, :parent

  def initialize(ary=[])
    ary.each do |a|
      add a
    end
  end

  def empty?
    true
  end

  def add(value)
    new_node = Node.new value

    if empty?
      @root = new_node
    else
      the_root = @root
      while true
        if the_root.value > new_node.value
          if the_root.parent.nil?
            @root = new_node
            the_root.parent = new_node
          else
            the_root.parent.next = new_node
            the_root.parent = new_node
          end
          new_node.next = the_root
          break
        else
          if the_root.next.nil?
            the_root.next = new_node
            break
          else
            the_root = the_root.next
          end
        end
      end
    end
    true
  end

  def peak
    @root.value if @root
  end

  def pop
    return if empty?
    peak.tap do
      @root = @root.next
      if @root
        @root.parent = nil
      end
    end
  end

  def empty?
    !peak
  end
end
