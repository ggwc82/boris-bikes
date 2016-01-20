require 'bike'

describe Bike do 
	it { expect(subject).to respond_to(:working?) }
	it { expect(subject).to respond_to(:docked?) }
	it { expect(subject).to be_docked }
end