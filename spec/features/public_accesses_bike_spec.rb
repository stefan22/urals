require 'capybara/rspec'

describe "public accesses bike" do
  let(:station) {DockingStation.new}
  scenario 'docking station releases a working bike' do
    station.dock Bike.new
    bike = station.release_bike
    expect(bike).to be_working
  end

  scenario 'docking station does not releases bikes when there are none available' do
    expect { station.release_bike }.to raise_error 'No bikes available'
  end
end
