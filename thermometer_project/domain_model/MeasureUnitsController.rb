require_relative "exceptions/ConversionNotDefined"

class MeasureUnitsController
	@validMeasureUnits

	def initialize()
		@validMeasureUnits = ['Celsius', 'Fahrenheits']
	end

	def convert(temperature, fromMeasureUnits, toMeasureUnits)
		case fromMeasureUnits
			when "Celsius" then convertTemperatureFromCelsiusTo(temperature, toMeasureUnits)
			when "Fahrenheits" then convertTemperatureFromFahrenheitsTo(temperature, toMeasureUnits)
			else raise ConversionNotDefined
		end
	end

	def isaValidUnitMeasure(units)
		if @validMeasureUnits.include?(units)
			return true
		end
	end

	private
	def convertTemperatureFromCelsiusTo(celsiusTemperature, targetUnits)
		case targetUnits
			when "Celsius" then celsiusTemperature
			when "Fahrenheits" then (celsiusTemperature * 9.0 / 5.0 + 32.0).round(2)
			else raise ConversionNotDefined
		end
	end

	def convertTemperatureFromFahrenheitsTo(fahrenheitsTemperature, targetUnits)
		case targetUnits
			when "Fahrenheits" then fahrenheitsTemperature
			when "Celsius" then ((fahrenheitsTemperature - 32) * 5 / 9).round(2)
			else raise ConversionNotDefined
		end
	end
end