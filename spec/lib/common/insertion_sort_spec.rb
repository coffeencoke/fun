require_relative '../../../lib/common/insertion_sort'

module Common
  describe InsertionSort do
    subject { described_class.sort(*numbers) }

    [[1,5,4,3,7,8,2]].each do |n|
      context "when the numbers to sort is #{n}" do
        let(:expected_sort) { n.sort }
        let(:numbers) { n }

        it "sorts the numbers correctly" do
          subject.should == expected_sort
        end
      end
    end
  end
end
