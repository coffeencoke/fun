require_relative '../../../lib/problems/quipu'

describe Quipu do
  examples = [
    {
      args: ["-XX-XXXX-XXX-"],
      return_value: 243
    },
    {
      args: ["-XX--XXXX---XXX-"],
      return_value: 204003
    },
    {
      args: ["-X-"],
      return_value: 1
    },
    {
      args: ["-X-------"],
      return_value: 1000000
    },
    {
      args: ["-XXXXXXXXX--XXXXXXXXX-XXXXXXXXX-XXXXXXX-XXXXXXXXX-"],
      return_value: 909979
    },
  ]

  subject { described_class.read_knots(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end
