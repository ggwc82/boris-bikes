require 'docking_station'

describe DockingStation do
	
	it { expect respond_to(:release_bike) }

	it 'returns a bike' do 
		expect(subject.release_bike).to be_a(Bike)
	end

	it 'returns a working bike' do
		new_bike = subject.release_bike
		expect(new_bike).to be_working
	end

	it { expect respond_to(:dock).with(1).arguments }

	it { expect respond_to(:bike) }

	it 'returns a bike' do
		new_bike = subject.release_bike 
		subject.dock(new_bike) 
		expect(subject.bike).to be_a Bike
	end

end




