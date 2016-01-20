describe 'User Stories - 1 Dock the Bike' do
  it 'Docks the bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    docked = docking_station.dock(bike)
    expect(docked).to be_a Bike
  end
end

describe 'User Stories - 2 View docked status' do
  docking_station = DockingStation.new
  bike = docking_station.release_bike
  
  it 'Checks docking status' do
    expect(bike.docked?).to eq true
  end

  it 'checks for docked bikes' do
    docking_station.dock(bike)
    expect(docking_station.bike).to be_a Bike
  end 
end