class BinarySearchTree
  attr_reader :root

  def initialize(root)
    @root = root
  end

  def valid?
    tree_node_is_valid?(root)
  end

  def tree_node_is_valid?(node, min = nil, max = nil)
    if node.nil?
      true
    elsif (min && min > node.value) || (max && max < node.value)
      puts "max < node.value?: #{max} < #{node.value}"
      false
    else
      tree_node_is_valid?(node.left, min, node.value) && tree_node_is_valid?(node.right, node.value, max)
    end
  end
end
