require_relative './simple_box.rb'
require_relative './wrapper.rb'
require_relative './ribbon.rb'
inputs = File.readlines(File.dirname(__FILE__) + '/input.txt')
inputs.each do |input|
	box = SimpleBox.new(input)
	puts "Wrapper ->> #{box.wrapper_area} || Ribbon :: #{box.ribbon_needed}"
end