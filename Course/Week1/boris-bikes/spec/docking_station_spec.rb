require 'docking_station'

describe DockingStation do
	
	it { expect respond_to(:release_bike) }

	it { expect(subject.release_bike).to be_a Bike }
	
	it { expect(subject.release_bike).to be_working }

	it { expect respond_to(:dock).with(1).arguments }

	it { expect respond_to(:bike) }

	it 'releases and then returns a bike' do
		new_bike = subject.release_bike 
		subject.dock(new_bike) 
		expect(subject.bike).to be_a Bike
	end

end




