require_relative '../../../lib/problems/no_order_of_operations'

describe NoOrderOfOperations do
  examples = [
    {
      args: ["3+5*7"],
      return_value: 56
    },
    {
      args: ["4-8*9*1"],
      return_value: -36
    },
    {
      args: ["0"],
      return_value: 0
    },
    {
      args: ["1*2*3*4*5*6*7*8*9"],
      return_value: 362880
    },
  ]

  subject { described_class.evaluate(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end
