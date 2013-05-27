require_relative '../../../lib/problems/username'

module Problems
  describe Username do
    subject { described_class.new_member(existing_names, new_name) }

    ins_and_outs = [
      {
        input: [
          ["MasterOfDisaster", "DingBat", "Orpheus", "WolfMan", "MrKnowItAll"],
          "TygerTyger"
        ],
        output: %(TygerTyger)
      },
      {
        input: [
          ["MasterOfDisaster", "TygerTyger1", "DingBat", "Orpheus", "TygerTyger", "WolfMan", "MrKnowItAll"],
          "TygerTyger"
        ],
        output: %(TygerTyger)
      },
      {
        input: [
          ["TygerTyger2000", "TygerTyger1", "MasterDisaster", "DingBat", "Orpheus", "WolfMan", "MrKnowItAll"],
          "TygerTyger"
        ],
        output: %(TygerTyger2)
      },
      {
        input: [
          ["TygerTyger2000", "TygerTyger1", "MasterDisaster", "DingBat", "Orpheus", "WolfMan", "MrKnowItAll"],
          "TygerTyger"
        ],
        output: %(TygerTyger)
      },
      {
        input: [
          ["grokster2", "BrownEyedBoy", "Yoop", "BlueEyedGirl", "grokster", "Elemental", "NightShade", "Grokster1"],
          "grokster"
        ],
        output: %(grokster1)
      },
      {
        input: [
          ["Bart4", "Bart5", "Bart6", "Bart7", "Bart8", "Bart9", "Bart10", "Lisa", "Marge", "Homer", "Bart", "Bart1", "Bart2", "Bart3", "Bart11", "Bart12"],
          "Bart"
        ],
        output: %(Bart13)
      }
    ]

    ins_and_outs.each do |in_and_out|
      pending "input of #{in_and_out[:input]}" do
        let(:existing_names) { in_and_out[:input][0] }
        let(:new_name) { in_and_out[:input][1] }

        it { should == in_and_out[:output] }
      end
    end
  end
end
