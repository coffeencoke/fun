require_relative '../../../lib/problems/ccipher'

describe CCipher do
  examples = [
    {
      args: ["VQREQFGT", 2],
      return_value: "TOPCODER"
    },
    {
      args: ["ABCDEFGHIJKLMNOPQRSTUVWXYZ", 10],
      return_value: "QRSTUVWXYZABCDEFGHIJKLMNOP"
    },
    {
      args: ["TOPCODER", 0],
      return_value: "TOPCODER"
    },
    {
      args: ["ZWBGLZ", 25],
      return_value: "AXCHMA"
    },
    {
      args: ["DBNPCBQ", 1],
      return_value: "CAMOBAP"
    },
    {
      args: ["LIPPSASVPH", 4],
      return_value: "HELLOWORLD"
    },
  ]

  subject { described_class.decode(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end
