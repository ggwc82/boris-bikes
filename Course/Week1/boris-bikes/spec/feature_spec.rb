describe 'User Stories - 1 Dock the Bike' do
  it 'Docks the bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    docked = docking_station.dock(bike)
    expect(docked).to be_a Bike
  end
end

describe 'User Stories - 2 View docked status' do
  it 'Checks docking status' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.is_docked?).to eq true
  end
end