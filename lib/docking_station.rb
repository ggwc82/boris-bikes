require './lib/bike'

class DockingStation
	
	attr_reader :bike

	def release_bike
		raise "There are no bikes left!!" unless @bike
	  @bike
	end

	def dock(bike)
		@bike = bike
	end
end