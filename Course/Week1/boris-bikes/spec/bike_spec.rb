require 'bike'

describe Bike do 
	it { expect respond_to(:working?) }
	it { expect respond_to(:docked?) }
	it { expect(subject).to be_docked }
end