require_relative '../../lib/shuffled_string'

describe ShuffledString do
  subject { described_class.new shuffled_string }

  let(:str1) { 'asdf' }
  let(:str2) { 'awer' }
  let(:shuffled_string) { 'asadwefr' }

  it 'can detect if the string has been shuffled by a given set of strings' do
    str3 = 'qwir'
    str4 = 'awera'
    subject.shuffled_from?(str1, str2).should be_true
    subject.shuffled_from?(str1, str3).should be_false
    subject.shuffled_from?(str1, str4).should be_false
  end
end
