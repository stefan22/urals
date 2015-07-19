require 'capybara/rspec'

describe 'maintainer likes to be able to set docking station capacity' do
  scenario 'maintainer sets new capacity for docking station' do
    station = DockingStation.new
    station.capacity = 50
    expect(station.capacity).to eq 50
  end

end
