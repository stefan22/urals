require_relative 'bike'

class DockingStation

  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    if empty?
      fail 'No bikes available'
    elsif  @bikes.all? {|bike| bike.working? == false }
      fail 'No bikes available'
    else  
    @bikes.pop
    end
  end

  def dock bike
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end


end
