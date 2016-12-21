# < means inherit
class NotValidUnitMeasure < StandardError
	def initialize(msg="The following measure unit is not valid")
		super
	end
end