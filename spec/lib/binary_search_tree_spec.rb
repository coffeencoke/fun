require_relative '../../lib/binary_search_tree'
require 'debugger'

describe BinarySearchTree do
  let(:subject) { described_class.new(root_node) }

  let(:node) { Struct.new :left, :right, :value }

  let(:root_node) { node.new node_1, node_2, 15 }
  let(:node_1) { node.new node_3, node_4, 5 }
  let(:node_2) { node.new node_5, node_6, 30 }
  let(:node_3) { node.new node_7, node_8, 2 }
  let(:node_4) { node.new node_9, node_10, 10 }
  let(:node_5) { node.new nil, nil, 25 }
  let(:node_6) { node.new nil, nil, 35 }
  let(:node_7) { node.new nil, nil, 1 }
  let(:node_8) { node.new nil, nil, 5 }
  let(:node_9) { node.new nil, nil, 9 }
  let(:node_10){ node.new nil, nil, 11 }

  context 'when it is not a valid Binary Search Tree' do
    let(:node_10){ node.new nil, nil, 19 }

    it 'is invalid' do
      subject.should_not be_valid
    end
  end

  context 'when it is a valid Binary Search Tree' do
    it 'is valid' do
      subject.should be_valid
    end
  end
end
