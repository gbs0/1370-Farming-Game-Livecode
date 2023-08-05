class Water
  attr_reader :quantity

  def initialize
    @quantity = 15
  end

  def use_water
    @quantity -= 5
  end
end
