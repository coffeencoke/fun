require_relative '../../../lib/problems/stock_buyer'

describe StockBuyer do
  examples = [
    {
      args: [10, 1, 12, 5, 3, 7, 0, 2, 7],
      return_value: { buy_at: 1, sell_at: 2, profit: 11 }
    },
    {
      args: [100, 113, 110, 85, 105, 102, 86, 63, 81, 101, 94, 106, 101, 79, 94, 90, 97],
      return_value: { buy_at: 7, sell_at: 11, profit: 43 }
    },
    {
      args: [10, 11, 7, 10, 6],
      return_value: { buy_at: 2, sell_at: 3, profit: 3 }
    },
  ]

  subject { described_class.buy_and_sell(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end

