describe 'Feature Tests' do
      docking_station = DockingStation.new
      bike =  Bike.new #docking_station.release_bike
      docked = docking_station.dock(bike)

  context 'User Stories - 1 Dock the Bike' do
    it { expect(docked).to be_a Bike }
  end

  context 'User Stories - 2 View docked status' do
    it { expect(bike.docked?).to eq true }

    it { expect(docking_station.bike).to be_a Bike }
  end
end