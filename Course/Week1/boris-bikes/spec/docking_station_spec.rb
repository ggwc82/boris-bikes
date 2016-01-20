require 'docking_station'

describe DockingStation do
	
	it { expect respond_to(:release_bike) }

	docking = DockingStation.new

	it 'returns a bike' do 
		expect(subject.release_bike).to be_a(Bike)
	end

	it 'returns a working bike' do
		new_bike = subject.release_bike
		expect(new_bike).to be_working
	end
end




