class Wrapper
  attr_accessor :length, :width, :height
  def initialize(l, w, h)
    @length = l
    @width = w
    @height = h
  end

  def area
  	surface_area + additional_area
  end

  private

  def surface_area
    (2 * @length * @width) + (2 * @width * @height) + (2 * @height * @length)
  end

  def additional_area
  	least_measurements = [@length, @width, @height].sort[0..1]
  	least_measurements[0] * least_measurements[1]
  end
end