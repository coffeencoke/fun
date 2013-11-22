class ParkingGarage
  attr_reader :open_spaces, :occupied_spaces

  def initialize(spaces)
    @open_spaces = spaces
    @occupied_spaces = {}
  end

  def space_to_occupy
    open_spaces.first
  end

  def full?
    open_spaces.empty?
  end

  def occupy(space)
    occupied_spaces[space] = true unless occupied?(space)
  end

  def occupied?(space)
    occupied_spaces.has_key? space
  end
end
