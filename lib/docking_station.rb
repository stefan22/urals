require_relative 'bike'

class DockingStation

  def release_bike
    Bike.new
  end

  def dock bike
    fail 'No bikes available'
  end


end
