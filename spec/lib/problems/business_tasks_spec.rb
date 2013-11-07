require_relative '../../../lib/problems/business_tasks'

describe BusinessTasks do
  examples = [
    {
      args: [["a","b","c","d"], 2],
      return_value: "a"
    },
    {
      args: [["a","b","c","d","e"], 3],
      return_value: "d"
    },
    {
      args: [["alpha","beta","gamma","delta","epsilon"], 1],
      return_value: "epsilon"
    },
    {
      args: [["a","b"], 1000],
      return_value: "a"
    },
    {
      args: [["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t",
"u","v","w","x","y","z"], 17],
      return_value: "n"
    },
    {
      args: [["zlqamum","yjsrpybmq","tjllfea","fxjqzznvg","nvhekxr","am","skmazcey","piklp",
"olcqvhg","dnpo","bhcfc","y","h","fj","bjeoaxglt","oafduixsz","kmtbaxu",
"qgcxjbfx","my","mlhy","bt","bo","q"], 9000000],
      return_value: "fxjqzznvg"
    }
  ]

  subject { described_class.get_task(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end
