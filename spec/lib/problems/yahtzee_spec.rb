require_relative '../../../lib/problems/yahtzee'

describe Yahtzee do
  examples = [
    {
      args: [2, 2, 3, 5, 4],
      return_value: 5
    },
    {
      args: [6, 4, 1, 1, 3],
      return_value: 6
    },
    {
      args: [5, 3, 5, 3, 3],
      return_value: 10
    },
  ]

  subject { described_class.max_points(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end
