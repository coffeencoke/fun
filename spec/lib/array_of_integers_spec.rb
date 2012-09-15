require_relative '../../lib/array_of_integers'

describe ArrayOfIntegers do
  subject { described_class.new(*ints) }

  let(:ints) { [1,4,6,1,8,30,-10,2,6,23,43,-5,1,-3,-4,-5,-100,100] }

  it 'can find the largest continuous sum' do
    subject.largest_continuous_sum.should == 114
  end
end
