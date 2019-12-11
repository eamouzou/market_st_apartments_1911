class Building
  attr_reader :units, :average_rent

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    num_of_bldgs = @units.count
    rent_sum = (@units.map {|apt| apt.monthly_rent}).sum
    avg_rent = rent_sum.to_f/num_of_bldgs
    # require "pry"; binding.pry
  end

  def renter_with_highest_rent
    renter_to_rent = {}
    occupied_bldgs = @units.find_all {|apt| apt.renter != nil}
    occupied_bldgs.each do |apt|
      renter_to_rent[apt.renter] = apt.monthly_rent
    end
    highest_rent = renter_to_rent.max_by do |k, v|
      v
    end
    renter_with_highest_rent = highest_rent[0]
    return renter_with_highest_rent
    require "pry"; binding.pry
  end

  def annual_breakdown
    name_to_annual_rent = {}
    occupied_bldgs = @units.find_all {|apt| apt.renter != nil}

    occupied_bldgs.each do |apt|
      name_to_annual_rent[apt.renter.name] = (apt.monthly_rent * 12)
    end

    return name_to_annual_rent

    require "pry"; binding.pry
  end

end
