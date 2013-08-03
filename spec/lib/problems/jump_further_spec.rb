require_relative '../../../lib/problems/jump_further'

describe JumpFurther do
  examples = [
    {
      args: [2, 2],
      return_value: 3
    },
    {
      args: [2, 1],
      return_value: 2
    },
    {
      args: [3, 3],
      return_value: 5
    },
    {
      args: [1313, 5858],
      return_value: 862641
    },
    {
      args: [1, 757065],
      return_value: 1
    }
  ]

  subject { described_class.furthest(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end
