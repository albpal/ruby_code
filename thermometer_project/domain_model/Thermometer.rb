require_relative "MeasureUnitsController"

class Thermometer
	# @ - This symbol means that its memory is different across instances, ie, differents values for different instances
	# @@ - This symbol means that its memory is the same across instances (same as static on java?)
	@measureUnits

	# initialize is the constructor of the class
	def initialize(units)
		setDisplayMeasureUnits(units)
	end

	def setDisplayMeasureUnits(units)
		if MeasureUnitsController.new.isaValidUnitMeasure(units)
			@measureUnits = units
		else
			raise NotValidUnitMeasure, units, "The following measure unit is not valid" 
		end
	end
	
	def getCurrentTemperature()
		return retrieveCurrentTemperature()
	end

	private # All below methods are privates

	# This method has to be implemented in a subclass
	def retrieveCurrentTemperature()
	end
end

