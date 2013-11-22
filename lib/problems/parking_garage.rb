ParkingSpot = Struct.new(:location)

class ParkingGarage
  attr_reader :spots

  def initialize(spots)
    @spots = spots
  end

  def space_to_occupy
    spots.first
  end
end
