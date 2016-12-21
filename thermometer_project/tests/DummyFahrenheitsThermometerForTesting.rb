require_relative "../domain_model/Thermometer"

class DummyFahrenheitsThermometerForTesting < Thermometer
	def initialize(units)
		super(units)
	end

	def retrieveCurrentTemperature
		MeasureUnitsController.new.convert(64.4, "Fahrenheits", @measureUnits)
	end
end