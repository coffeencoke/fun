require_relative '../../../lib/common/min_priority_queue'

describe MinPriorityQueue do
  its(:empty?) { should be_true }

  it 'can add a value' do
    subject.add(1).should be_true
  end

  its(:peak) { should be_nil }
  its(:pop) { should be_nil }
  it { should be_empty }

  context 'when a node is added' do
    before do
      subject.add(1)
    end

    its(:peak) { should == 1 }
    it 'can remove the top node' do
      subject.pop.should == 1
    end
    it { should_not be_empty }
  end

  context 'when a node is added and removed' do
    before do
      subject.add 1
      subject.pop
    end

    it 'no longer contains that node' do
      subject.peak.should be_nil
    end
  end

  context 'when multiple nodes are added' do
    subject { described_class.new([5,1,6,2]) }

    it 'prioritizes the queue in minimum order' do
      subject.peak.should == 1
    end

    context 'and the root node is popped' do
      before do
        subject.pop
      end

      it 'replaces the root node with the next minimum value' do
        subject.peak.should == 2
      end
    end
  end
end
