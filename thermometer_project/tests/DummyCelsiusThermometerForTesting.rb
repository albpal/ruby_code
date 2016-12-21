require_relative "../domain_model/Thermometer"

class DummyCelsiusThermometerForTesting < Thermometer
	def initialize(units)
		super(units)
	end

	def retrieveCurrentTemperature
		MeasureUnitsController.new.convert(18, "Celsius", @measureUnits)
	end
end