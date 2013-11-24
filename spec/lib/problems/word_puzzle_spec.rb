require_relative '../../../lib/problems/word_puzzle'

describe WordPuzzle do
  examples = [
    {
      args: [["TEST", "GOAT", "BOAT"], ["GOAT", "BOAT", "TEST"]],
      return_value: ["1 0",  "2 0",  "0 0"]
    },
    {
      args: [["SXXX", "XQXM", "XXLA", "XXXR"], ["SQL", "RAM"]],
      return_value: ["0 0",  ""]
    },
    {
      args: [["EASYTOFINDEAGSRVHOTCJYG", "FLVENKDHCESOXXXXFAGJKEO", "YHEDYNAIRQGIZECGXQLKDBI", "DEIJFKABAQSIHSNDLOMYJIN", "CKXINIMMNGRNSNRGIWQLWOG", "VOFQDROQGCWDKOUYRAFUCDO", "PFLXWTYKOITSURQJGEGSPGG"], ["EASYTOFIND", "DIAG", "GOING", "THISISTOOLONGTOFITINTHISPUZZLE"]],
      return_value: ["0 0",  "1 6",  "0 22",  ""]
    },
  ]

  subject { described_class.find_words(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end
