require_relative '../../../lib/problems/passing_grade'

describe PassingGrade do
  examples = [
    {
      args: [[55,77,82,60], [100,100,100,100], 300],
      return_value: 181
    },
    {
      args: [[1, 2, 3, 4 ], [2, 3, 4, 5], 7],
      return_value: 4
    },
    {
      args: [[1, 2, 2, 1], [9, 9, 9, 9], 9],
      return_value: -1
    },
    {
      args: [[7, 8, 7, 6], [8, 8, 8, 8], 9],
      return_value: 0
    },
    {
      args: [[17, 23, 50, 200, 19, 56, 83, 91, 77, 9, 0], [20, 30, 50, 250, 20, 70, 100, 100, 100, 10, 10], 400],
      return_value: 129
    },
    {
      args: [[600,600,600,600,600,600,600,600,600,600,
 600,600,600,600,600,600,600,600,600,600], [1000,1000,1000,1000,1000,1000,1000,1000,
 1000,1000,1000,1000,1000,1000,1000,1000,
 1000,1000,1000,901], 3000],
      return_value: 2886
    },
  ]

  subject { described_class.points_needed(*args) }

  examples.each_with_index do |example, index|
    describe "Example ##{index+1}: args: #{example[:args].inspect}" do
      let(:args) { example[:args] }
      let(:return_value) { example[:return_value] }

      it { should == return_value }
    end
  end
end
