require_relative '../../../lib/common/sorting/insertion_sort'
require_relative '../../../lib/common/sorting/quick_sort'

ARRAY = [1,6,4,5,7,9,4,22,34,6,2,1,423,12,5,8,32,2]
EXPECTED = ARRAY.sort

module Common
  describe InsertionSort do
    subject { described_class.sort(*ARRAY) }

    it { should == EXPECTED }
  end
end

describe QuickSort do
  subject { QuickSort.new ARRAY }

  it 'can sort an array' do
    subject.call.should == EXPECTED
  end
end

