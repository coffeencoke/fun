#
#     5
#    / \
#   3   7
#  / \
#     8
#
#     5
#    / \
#   3   7
#  / \
# 2   8
#


class Node
  attr_reader :value, :left, :right

  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end
end

#
#   5
#  / \
#     6

n4 = Node.new(7)
n3 = Node.new(4)
n2 = Node.new(2)
n1 = Node.new(3, n2, n3)
root = Node.new(5, n1, n4)

def binary_search_tree?(root, max=1/0.0, min=-1/0.0)
  return true if root.nil?

  root_cond = root.value < max && root.value > min
  left_cond = binary_search_tree?(root.left, root.value, min)
  right_cond = binary_search_tree?(root.right, max, root.value)

  root_cond && left_cond && right_cond
end

puts binary_search_tree?(root)


