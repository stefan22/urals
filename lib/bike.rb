class Bike

  attr_accessor :working
  attr_reader :broken

  def initialize
      @working = true
      @broken = true
  end


  def working?
    @working
  end

  def report_broken
    @broken
  end

  def broken?
    @broken
  end

end
