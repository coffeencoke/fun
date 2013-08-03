require_relative '../../../lib/problems/match_making'

describe MatchMaking do
  subject do
    described_class.make_match(women_names, women_answers, men_names, men_answers, query_woman)
  end

  describe 'case 1' do
    let(:women_names) { ["Constance", "Bertha", "Alice"] }
    let(:women_answers) { ["aaba", "baab", "aaaa"] }
    let(:men_names) { ["Chip", "Biff", "Abe"] }
    let(:men_answers) { ["bbaa", "baaa", "aaab"] }
    let(:query_woman) { "Bertha" }

    it 'returns a string' do
      subject.should be_a(String)
    end

    it { should == 'Biff' }
  end

  describe 'case 2' do
    let(:women_names) { ["Constance", "Bertha", "Alice"] }
    let(:women_answers) { ["aaba", "baab", "aaaa"] }
    let(:men_names) { ["Chip", "Biff", "Abe"] }
    let(:men_answers) { ["bbaa", "baaa", "aaab"] }
    let(:query_woman) { "Constance" }

    it 'returns a string' do
      subject.should be_a(String)
    end

    it { should == 'Chip' }
  end

  describe 'case 3' do
    let(:women_names) { ["F", "M", "S", "h", "q", "g", "r", "N", "U", "x", "H", "P",
 "o", "E", "R", "z", "L", "m", "e", "u", "K", "A", "w", "Q",
 "O", "v", "j", "a", "t", "p", "C", "G", "k", "c", "V", "B",
 "D", "s", "n", "i", "f", "T", "I", "l", "d", "J", "y", "b"] }
    let(:women_answers) { ["abaabbbb", "bbaabbbb", "aaabaaab", "aabbaaaa", "baabbaab",
 "aaababba", "bbabbbbb", "bbbabbba", "aaabbbba", "aabbbaaa",
 "abbabaaa", "babbabbb", "aaaaabba", "aaaabbaa", "abbbabaa",
 "babababa", "abbaaaaa", "bbababba", "baaaaaba", "baaaaabb",
 "bbbbabba", "ababbaaa", "abbbabab", "baabbbaa", "bbbaabbb",
 "aababbab", "ababbabb", "abbaabba", "baabbabb", "aaabaaab",
 "aabbbaba", "aabaaabb", "abababba", "aabbaaaa", "aabbabaa",
 "bababaaa", "aabaaaab", "bbbbaabb", "baaababb", "abaabbab",
 "aabbbaaa", "baabbaba", "bbabbbaa", "aabbbbaa", "abbbaaab",
 "abababbb", "ababaaba", "bababaaa"] }
    let(:men_names) { ["f", "C", "v", "g", "Q", "z", "n", "c", "B", "o", "M", "F",
 "u", "x", "I", "T", "K", "L", "E", "U", "w", "A", "d", "t",
 "e", "R", "D", "s", "p", "q", "m", "r", "H", "j", "J", "V",
 "l", "a", "k", "h", "G", "y", "i", "P", "O", "N", "b", "S"] }
    let(:men_answers) { ["bbbaabab", "bbabaabb", "ababbbbb", "bbbababb", "baababaa",
 "bbaaabab", "abbabbaa", "bbbabbbb", "aabbabab", "abbababa",
 "aababbbb", "bababaab", "aaababbb", "baabbaba", "abaaaaab",
 "bbaababa", "babaabab", "abbabbba", "ababbbab", "baabbbab",
 "babbaaab", "abbbbaba", "bbabbbba", "baaabaab", "ababbabb",
 "abbbaabb", "bbbbaabb", "bbbaaabb", "baabbaba", "bbabaaab",
 "aabbbaab", "abbbbabb", "bbaaaaba", "bbbababa", "abbaabba",
 "bababbbb", "aabaaabb", "babbabab", "baaaabaa", "ababbaba",
 "aaabaabb", "bbaaabaa", "baaaaabb", "bbaabaab", "bbababab",
 "aabaaaab", "aaaaabab", "aabbaaba"] }
    let(:query_woman) { "U" }

    it 'returns a string' do
      subject.should be_a(String)
    end

    it { should == 'x' }
  end
end
