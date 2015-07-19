require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

  it 'cannot release bike when bike is broken' do
    station = DockingStation.new
    subject.report_broken
    expect { station.release_bike }.to raise_error 'No bikes available'
  end

end
