require 'docking_station'

describe DockingStation do

	it { expect(subject).to respond_to(:dock).with(1).arguments }

	it { expect(subject).to respond_to(:bike) }

	it 'releases and then returns a bike' do
		new_bike = Bike.new 
		subject.dock(new_bike) 
		expect(subject.bike).to be_a Bike
		expect(subject.release_bike).to eq new_bike
	end
  
  describe '#release_bike' do
    new_bike = Bike.new
    it { expect(subject).to respond_to(:release_bike) }
    
    it 'When a bike has been docked' do 
      subject.dock(new_bike)
      expect(subject.release_bike).to be_a Bike
      expect(subject.release_bike).to be_working 
    end
    
    it { expect { subject.release_bike }.to raise_error("There are no bikes left!!") }
  end
end




