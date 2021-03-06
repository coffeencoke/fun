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

  it 'cannot vacate an open space' do
    subject.vacate(1).should be_false
  end

  context 'when the first space is occupied' do
    before do
      subject.occupy(1)
    end

    it 'cannot occupy an already occupied space' do
      subject.occupy(1).should be_false
    end

    its(:space_to_occupy) { should == 2 }

    it 'can vacate a space' do
      subject.vacate(1).should be_true
    end
  end

  context 'when the first space has been occupied and becomes vacant' do
    before do
      subject.occupy 1
      subject.vacate 1
    end

    it 'prioritizes the closer space for the next occupant' do
      subject.space_to_occupy.should == 1
    end
  end
end
