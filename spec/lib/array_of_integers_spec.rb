require_relative '../../lib/array_of_integers'

describe ArrayOfIntegers do
  subject { described_class.new(*ints) }

  let(:ints) { [1,4,6,1,8,30,-10,2,6,23,43,-5,1,-3,-4,-5,-100,100] }

  it 'can find the largest continuous sum' do
    subject.largest_continuous_sum.should == 114
  end

  context 'when one array is created from another array with a missing element' do
    let(:source_ints) { [1,4,6,1,8,30,-10,2,6,missing_element,23,43,-5,1,-3,-4,-5,-100,100] }
    let(:missing_element) { 30 }

    it 'can find the element missing in the second array' do
      subject.missing_int(source_ints).should == missing_element
    end
  end
end
