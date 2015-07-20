require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'releases working bikes' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  describe 'release_bike' do
    it 'raises an error when no bikes are available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'does not release broken bikes' do
    bike = Bike.new
    bike.report_broken
    subject.dock bike
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end


  describe 'dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error "Docking station full"
    end
  end

end
