# < means inherit
class ConversionNotDefined < StandardError
	def initialize(msg="ConversionNotDefined")
		super
	end
end