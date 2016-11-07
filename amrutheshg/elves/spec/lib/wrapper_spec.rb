require 'spec_helper'

describe Wrapper do
  describe "additional area" do
  	it "gives the area with least sides" do
  	  wrapper = Wrapper.new(2, 3, 4)
  	  expect(wrapper.send(:additional_area)).to eq(6)

  	  wrapper = Wrapper.new(4, 4, 4)
  	  expect(wrapper.send(:additional_area)).to eq(16)

  	  wrapper = Wrapper.new(3, 3, 2)
  	  expect(wrapper.send(:additional_area)).to eq(6)

  	  wrapper = Wrapper.new(12, 13, 4)
  	  expect(wrapper.send(:additional_area)).to eq(48)
  	end
  end

  describe "surface area" do
  	it "gives the surface area" do
  	  wrapper = Wrapper.new(2, 3, 4)
  	  expect(wrapper.send(:surface_area)).to eq(52)

  	  wrapper = Wrapper.new(4, 4, 4)
  	  expect(wrapper.send(:surface_area)).to eq(96)

  	  wrapper = Wrapper.new(3, 3, 2)
  	  expect(wrapper.send(:surface_area)).to eq(42)

  	  wrapper = Wrapper.new(12, 13, 4)
  	  expect(wrapper.send(:surface_area)).to eq(512)
  	end
  end

  describe "area" do
  	it "gives the area" do
  	  wrapper = Wrapper.new(2, 3, 4)
  	  expect(wrapper.area).to eq(58)

  	  wrapper = Wrapper.new(6, 3, 4)
  	  expect(wrapper.area).to eq(120)
  	end
  end
end
