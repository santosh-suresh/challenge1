class SimpleBox
  attr_accessor :length, :width, :height, :wrapper

  def initialize(measurement_string)
  	@length, @width, @height = measurement_string.split("x").map(&:to_i)
  end

  def wrapper_area
  	@wrapper = Wrapper.new(@length, @width, @height) if @wrapper.nil?
  	@wrapper.area rescue 0
  end

  def ribbon_needed
  	@ribbon = Ribbon.new(@length, @width, @height) if @ribbon.nil?
  	@ribbon.ribbon_needed rescue 0
  end
end