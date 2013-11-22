require_relative '../../../lib/common/min_priority_queue'

describe MinPriorityQueue do
  its(:empty?) { should be_true }

  it 'can add a value' do
    subject.add(1).should be_true
  end

  its(:peak) { should be_nil }
  its(:pop) { should be_nil }

  context 'when a node is added' do
    before do
      subject.add(1)
    end

    its(:peak) { should == 1 }
    it 'can remove the top node' do
      subject.pop.should == 1
    end
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
end
