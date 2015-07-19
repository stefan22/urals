require 'capybara/rspec'

describe 'maintainer set up docking station a capacity' do
  scenario 'capacity set to 20 bikes' do
    station = DockingStation.new
    station.capacity = 20
    expect { station.capacity }.to eq 20
  end
end
