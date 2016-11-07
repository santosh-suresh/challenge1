class Ribbon
  attr_accessor :length, :width, :height
  def initialize(l, w, h)
    @length = l
    @width = w
    @height = h
  end

  def ribbon_needed
  	ribbon_to_wrap + ribbon_for_bow
  end

  private

  def ribbon_to_wrap
  	least_measurements = [@length, @width, @height].sort[0..1]
  	(2 * least_measurements[0]) + (2 * least_measurements[1])
  end

  def ribbon_for_bow
  	@length * @width * @height
  end
end