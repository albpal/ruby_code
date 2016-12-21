require 'test/unit'
require_relative "DummyFahrenheitsThermometerForTesting"
require_relative "../domain_model/exceptions/NotValidUnitMeasure"

class CelsiusThermometerTest < Test::Unit::TestCase
  # def setup
  # end

  # def teardown
  # end
  def test_createCelsiusThermometerRetrievingFahrenheitsTemperature
  	thermometer = DummyFahrenheitsThermometerForTesting.new("Celsius")

    assert_equal(thermometer.getCurrentTemperature(),18, "Invalid Temperature Returned")
  end

  def test_createFahrenheitsThermometerRetrievingFahrenheitsTemperature
	thermometer = DummyFahrenheitsThermometerForTesting.new("Fahrenheits")

    assert_equal(thermometer.getCurrentTemperature(),64.4, "Invalid Temperature Returned.")
  end

  def test_createCelsiusThermometerAndChangeToFahrenheitsRetrievingFahrenheitsTemperature
  	thermometer = DummyFahrenheitsThermometerForTesting.new("Celsius")

    assert_equal(thermometer.getCurrentTemperature(),18, "Invalid Temperature Returned")

    thermometer.setDisplayMeasureUnits("Fahrenheits")

    assert_equal(thermometer.getCurrentTemperature(),64.4, "Invalid Temperature Returned.")
  end

  def test_assignInvalidMeasureUnitsRetrievingFahrenheitsTemperature
    assert_raise NotValidUnitMeasure do
    	DummyFahrenheitsThermometerForTesting.new("aslkdl")
    end
  end
end