require 'test/unit'
require_relative "DummyCelsiusThermometerForTesting"
require_relative "../domain_model/exceptions/NotValidUnitMeasure"

class CelsiusThermometerTest < Test::Unit::TestCase
  # def setup
  # end

  # def teardown
  # end
  def test_createCelsiusThermometerRetrievingCelsiusTemperature
  	thermometer = DummyCelsiusThermometerForTesting.new("Celsius")

    assert_equal(thermometer.getCurrentTemperature(),18, "Invalid Temperature Returned")
  end

  def test_createFahrenheitsThermometerRetrievingCelsiusTemperature
	thermometer = DummyCelsiusThermometerForTesting.new("Fahrenheits")

    assert_equal(thermometer.getCurrentTemperature(),64.4, "Invalid Temperature Returned.")
  end

  def test_createCelsiusThermometerAndChangeToFahrenheitsRetrievingCelsiusTemperature
  	thermometer = DummyCelsiusThermometerForTesting.new("Celsius")

    assert_equal(thermometer.getCurrentTemperature(),18, "Invalid Temperature Returned")

    thermometer.setDisplayMeasureUnits("Fahrenheits")

    assert_equal(thermometer.getCurrentTemperature(),64.4, "Invalid Temperature Returned.")
  end

  def test_assignInvalidMeasureUnitsRetrievingCelsiusTemperature
    assert_raise NotValidUnitMeasure do
    	DummyCelsiusThermometerForTesting.new("aslkdl")
    end
  end
end