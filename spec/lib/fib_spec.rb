require_relative '../../lib/fib'

describe Fib do
  subject { described_class.values }

  it 'can give the first n values' do
    described_class.values.should == [0,1,1,2,3,5,8,13,21,34]
  end

  it 'has a 119th value of 3311648143516995021701120' do
    described_class.value(119).should == 3311648143516995021701120
  end
end
