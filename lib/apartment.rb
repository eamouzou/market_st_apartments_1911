class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter


  def initialize(attributes = {})
    @number = attributes[:number]
    @monthly_rent = attributes[:monthly_rent]
    @bathrooms = attributes[:bathrooms]
    @bedrooms = attributes[:bedrooms]
    @renter = renter
    # require "pry"; binding.pry
  end

  def add_renter(renter)
    @renter = renter
    # require "pry"; binding.pry
  end
end
