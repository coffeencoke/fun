require_relative '../../lib/quick_sort'

describe QuickSort do
  subject { QuickSort.new array }

  let(:array) { [1,6,4,5,7,9,4,22,34,6,2,1,423,12,5,8,32,2] }

  it 'can sort an array' do
    subject.call.should == [1, 1, 2, 2, 4, 4, 5, 5, 6, 6, 7, 8, 9, 12, 22, 32, 34, 423]
  end
end
