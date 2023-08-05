require_relative "corn"
require_relative "rice"
require_relative "water"

class Farm
  attr_reader :corn, :rice, :water

  def initialize
    @rice = Rice.new
    @corn = Corn.new
    @water = Water.new
  end

  def water!
    if @water.quantity > 0
      @water.use_water
      @corn.water!(5)
      @rice.water!(2)
    else
      puts "Wait for the next rain season before plating! 🌧"
    end
  end
end
