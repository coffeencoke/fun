require_relative '../../lib/fib'

describe Fib do
  subject { described_class.values }

  it 'has a 0th value of 0' do
    subject[0].should == 0
  end

  it 'has a 1st value of 1' do
    subject[1].should == 1
  end

  it 'has a 2rd value of 1' do
    subject[2].should == 1
  end

  it 'has a 3th value of 2' do
    subject[3].should == 2
  end

  it 'has a 4th value of 3' do
    subject[4].should == 3
  end

  it 'has a 5th value of 5' do
    subject[5].should == 5
  end

  it 'has a 6th value of 8' do
    subject[6].should == 8
  end

  it 'has a 7th value of 13' do
    subject[7].should == 13
  end

  it 'has a 8th value of 21' do
    subject[8].should == 21
  end

  it 'has a 9th value of 34' do
    subject[9].should == 34
  end
end
