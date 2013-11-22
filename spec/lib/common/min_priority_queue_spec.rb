require_relative '../../../lib/common/min_priority_queue'

describe MinPriorityQueue do
  its(:empty?) { should be_true }

  it 'can add a value' do
    subject.add(1).should be_true
  end

  its(:root) { should be_nil }

  context 'when a value is added' do
    before do
      subject.add(1)
    end

    its(:root) { should == 1 }
  end
end
