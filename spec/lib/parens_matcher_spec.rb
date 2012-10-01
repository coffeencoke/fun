require_relative '../../lib/parens_matcher'

describe ParensMatcher do
  subject { described_class.new string }

  ["(abc)", "(ab(c))", 'asdf(1(2"(a3sdf(4)asdf3)2(qwer3(erty4(5)4rtyu)3)2(3)2)1)asdf'].each do |str|
    describe "'#{str}'" do
      let(:string) { str }

      it 'is balanced' do
        subject.should be_balanced
      end
    end
  end

  ["(abc))", "((abc)", 'asdf)abc(', ')abc)'].each do |str|
    describe "'#{str}'" do
      let(:string) { str }

      it 'is not balanced' do
        subject.should_not be_balanced
      end
    end
  end
end
