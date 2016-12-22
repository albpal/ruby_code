require 'test/unit'
require_relative "../domain_model/MeasureUnitsController"
require_relative "../domain_model/exceptions/ConversionNotDefined"

class CelsiusThermometerTest < Test::Unit::TestCase
  # def setup
  # end

  # def teardown
  # end
  def test_invalidUnitMeasureConversion
    assert_raise ConversionNotDefined do
    	MeasureUnitsController.new.convert(18, "Celsius", "asdasd")
    end
    assert_raise ConversionNotDefined do
      MeasureUnitsController.new.convert(18, "asdasd", "Celsius")
    end
  end
end