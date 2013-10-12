require_relative '../../../lib/problems/betting_money'

describe BettingMoney do
  examples = [
    {
      args: [[10,20,30], [20,30,40], 1],
      return_value: 3400
    },
    {
      args: [[200,300,100], [10,10,10], 2],
      return_value: 49000
    },
    {
      args: [[100,100,100,100], [5,5,5,5], 0],
      return_value: 29500
    },
    {
      args: [[5000,5000], [100,2], 0],
      return_value: 0
    },
    {
      args: [[100], [10], 0],
      return_value: -1000
    },
  ]

  subject { described_class.money_made(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end
