require_relative '../../lib/fib'

describe Fib do
  describe 'with 4 rows' do
    it 'includes 1 for the first row' do
      subject.rows[0].should == [1]
    end

    it 'includes 1,1 for the second row'

    it 'includes 1,2,1 for the third row'

    it 'includes 1,3,3,1 for the fourth row'

    it 'includes 1,4,6,4,1 for the fifth row'

    it 'includes 1,5,10,10,5,1 for the sixth row'
  end
end
