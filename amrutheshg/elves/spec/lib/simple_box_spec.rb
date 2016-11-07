require 'spec_helper'

describe SimpleBox do
  describe "init" do
  	it "reads the measurement string" do
 	  box = SimpleBox.new("2x3x4")
 	  expect(box.length).to eq(2)
 	  expect(box.width).to eq(3)
 	  expect(box.height).to eq(4)
  	end
  end

  describe "wrapper area" do
  	it "gets the wrapper area" do
  	  box = SimpleBox.new("2x3x4")
  	  expect(box.wrapper_area).to eq(58)

  	  box = SimpleBox.new("1x1x10")
  	  expect(box.wrapper_area).to eq(43)
  	end
  end

  describe "ribbon needed" do
  	it "gets the ribbon needed" do
  	  box = SimpleBox.new("2x3x4")
  	  expect(box.ribbon_needed).to eq(34)

  	  box = SimpleBox.new("1x1x10")
  	  expect(box.ribbon_needed).to eq(14)
  	end
  end
end
