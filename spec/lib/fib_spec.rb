require_relative '../../lib/fib'

describe Fib do
  it 'has a first value of 1' do
    subject.values[0].should == 1
  end

  it 'has a 2nd value of 2' do
    subject.values[1].should == 2
  end

  it 'has a 3rd value of 3' do
    subject.values[2].should == 3
  end

  it 'has a 4th value of 5' do
    subject.values[3].should == 5
  end

  it 'has a 5th value of 8' do
    subject.values[4].should == 8
  end

  it 'has a 6th value of 13' do
    subject.values[5].should == 13
  end
end
