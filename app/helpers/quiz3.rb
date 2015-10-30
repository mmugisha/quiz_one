class Apartment
	attr_accessor :size, :bedrooms, :bathrooms, :garage

	def initialize(size, bedrooms=0, bathrooms=1, garage=false)
		@size = size
		@bedrooms = bedrooms
		@bathrooms = bathrooms
		@garage = garage
	end


end