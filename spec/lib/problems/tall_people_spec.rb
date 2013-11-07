require_relative '../../../lib/problems/tall_people'

describe TallPeople do
  examples = [
    {
      args: [
        "9 2 3",
        "4 8 7"
      ],
      return_value: [4, 7]
    },
    {
      args: [
        "1 2",
        "4 5",
        "3 6"
      ],
      return_value: [4,  4]
    },
    {
      args: [
        "1 1",
        "1 1"
      ],
      return_value: [1, 1]
    },
  ]

  subject { described_class.get_people(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end
