require_relative '../../../lib/problems/parking_garage'

describe ParkingGarage do
  subject { ParkingGarage.new(parking_spots) }

  let(:parking_spots) do
    [1,2,3,4,5]
  end

  context 'when no cars have been parked' do
    its(:space_to_occupy) { should == 1 }
    it { should_not be_full }
  end

  it 'can occupy an open space' do
    subject.occupy(1).should be_true
  end

  context 'when the first space is occupied' do
    before do
      subject.occupy(1)
    end

    it 'cannot occupy an already occupied space' do
      subject.occupy(1).should be_false
    end

    its(:space_to_occupy) { should == 2 }
  end
end
