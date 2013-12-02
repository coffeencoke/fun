require_relative '../common/min_priority_queue'

class ParkingGarage
  attr_reader :open_spaces_queue, :occupied_spaces

  def initialize(spaces)
    @open_spaces_queue = MinPriorityQueue.new(spaces)
    @occupied_spaces = {}
  end

  def space_to_occupy
    open_spaces_queue.peak
  end

  def full?
    open_spaces_queue.empty?
  end

  def occupy(space)
    if vacant? space
      occupied_spaces[space] = true
      open_spaces_queue.pop
    end
  end

  def vacate(space)
    if occupied? space
      occupied_spaces.delete space
      open_spaces_queue.add space
    end
  end

  protected

  def vacant?(space)
    !occupied? space
  end

  def occupied?(space)
    occupied_spaces.has_key? space
  end
end
