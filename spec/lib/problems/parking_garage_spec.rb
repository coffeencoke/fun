require_relative '../../../lib/problems/parking_garage'

describe ParkingGarage do
  subject { ParkingGarage.new(parking_spots) }

  let(:parking_spots) do
    [
      ParkingSpot.new(1),
      ParkingSpot.new(2),
      ParkingSpot.new(3),
      ParkingSpot.new(4),
      ParkingSpot.new(5)
    ]
  end
  context 'when no cars have been parked' do
    it 'gets the first space' do
      subject.space_to_occupy.should == parking_spots[0]
    end
  end
end
