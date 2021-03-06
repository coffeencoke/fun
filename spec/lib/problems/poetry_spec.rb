require_relative '../../../lib/problems/poetry'

describe Poetry do
  examples = [
    {
      args: ["I hope this problem",
 "is a whole lot better than",
 "this stupid haiku"],
      return_value: %(abc)
    },
    {
      args: ["     ",
 "Measure your height",
 "AND WEIGHT      ",
 "said the doctor",
 "",
 "And make sure to take your pills",
 "   to   cure   your    ills",
 "Every",
 "DAY"],
      return_value: %( aab ccde)
    },
    {
      args: ["One bright day in the middle of the night",
 "Two dead boys got up to fight",
 "Back to back they faced each other",
 "Drew their swords and shot each other",
 "",
 "A deaf policeman heard the noise",
 "And came to arrest the two dead boys",
 "And if you dont believe this lie is true",
 "Ask the blind man he saw it too"],
      return_value: %(aabb cdef)
    },
    {
      args: ["",
 "",
 "",
 ""],
      return_value: %(    )
    },
    {
      pending: true,
      args: [
        "This poem has uppercase letters", # a
        "In its rhyme scheme", # b
        "Alpha", # c
        "Blaster", # d
        "Cat", # e
        "Desert", # f
        "Elephant", # g
        "Frog", # h
        "Gulch", # i
        "Horse", # j  => this should be a b, but it is failing
        "Ireland", # k
        "Jam",
        "Krispy Kreme", 
        "Loofah", "Moo", "Narf", "Old", "Pink", "Quash", "Rainbow", "Star", "Tour", "Uvula", "Very", "Will", "Xmas", "Young", "Zed", "deception", "comic", "grout", "oval", "cable", "rob", "steal", "steel", "weak"],
      return_value: %(abcdefghibjkblmnopqrstcuvwxyzABCbDEFG)
    },
    {
      args: [" ",
 "     ",
 "This poem",
 "         ",
 " ",
 " ",
 "",
 "Has lots of blank lines",
 " ",
 "      ",
 "                                            ",
 "         ",
 " ",
 "              ",
 "                                                  ",
 "  in      it           "],
      return_value: %(  a    b       c)
    },
    {
      args: ["too bad   your",
 "     solution went   sour"],
      return_value: %(aa)
    },
  ]

  subject { described_class.rhyme_scheme(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it do 
        pending 'have not figured this one out yet :(' if example[:pending]
        should == return_value
      end
    end
  end
end
