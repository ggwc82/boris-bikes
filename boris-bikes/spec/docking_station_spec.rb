require 'docking_station'

describe DockingStation do
	
	it { expect respond_to(:release_bike) }

	docking = DockingStation.new

	it 'returns a bike' do 
		expect(docking.release_bike).to be_a(Bike)
	end

	it 'returns a working bike' do
		new_bike = docking.release_bike
		expect(new_bike.working?).to eq true
	end
end




