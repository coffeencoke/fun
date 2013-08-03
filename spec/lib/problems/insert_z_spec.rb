require_relative '../../../lib/problems/insert_z'

describe InsertZ do
  examples = [
    {
      args: ["fox", "fozx"],
      return_value: "Yes"
    },
    {
      args: ["fox", "zfzoxzz"],
      return_value: "Yes"
    },
    {
      args: ["foon", "foon"],
      return_value: "Yes"
    },
    {
      args: ["topcoder", "zopzoder"],
      return_value: "No"
    },
    {
      args: ["aaaaaaaaaa", "a"],
      return_value: "No"
    },
    {
      args: ["mvixrdnrpxowkasufnvxaq", "mvizzxzzzrdzznzrpxozzwzzkazzzszzuzzfnvxzzzazzq"],
      return_value: "Yes"
    },
    {
      args: ["opdlfmvuicjsierjowdvnx", "zzopzdlfmvzuicjzzsizzeijzowvznxzz"],
      return_value: "No"
    }
  ]

  subject { described_class.can_transform?(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should be_a(String) }
      it { should == return_value }
    end
  end
end
