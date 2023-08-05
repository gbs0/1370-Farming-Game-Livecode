require_relative "grain"

class Corn < Grain

  def initialize
    @quantity = 0
    @stock = 0
  end

  def crop!(days_until_crop)
    super
  end
end
