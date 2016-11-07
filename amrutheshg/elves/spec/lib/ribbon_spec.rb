require 'spec_helper'

describe Ribbon do
  it "gives the ribbon_to_wrap" do
  	ribbon = Ribbon.new(2, 3, 4)
  	expect(ribbon.send(:ribbon_to_wrap)).to eq(10)

  	ribbon = Ribbon.new(8, 11, 14)
  	expect(ribbon.send(:ribbon_to_wrap)).to eq(38)

  	ribbon = Ribbon.new(4, 4, 4)
  	expect(ribbon.send(:ribbon_to_wrap)).to eq(16)

  	ribbon = Ribbon.new(1, 1, 10)
  	expect(ribbon.send(:ribbon_to_wrap)).to eq(4)
  end

  it "gives the ribbon_for_bow" do
  	ribbon = Ribbon.new(2, 3, 4)
  	expect(ribbon.send(:ribbon_for_bow)).to eq(24)

  	ribbon = Ribbon.new(8, 11, 14)
  	expect(ribbon.send(:ribbon_for_bow)).to eq(1232)

  	ribbon = Ribbon.new(4, 4, 4)
  	expect(ribbon.send(:ribbon_for_bow)).to eq(64)

  	ribbon = Ribbon.new(1, 1, 10)
  	expect(ribbon.send(:ribbon_for_bow)).to eq(10)
  end

  it "gives the ribbon_needed" do
  	ribbon = Ribbon.new(2, 3, 4)
  	expect(ribbon.ribbon_needed).to eq(34)

  	ribbon = Ribbon.new(8, 11, 14)
  	expect(ribbon.ribbon_needed).to eq(1270)

  	ribbon = Ribbon.new(4, 4, 4)
  	expect(ribbon.ribbon_needed).to eq(80)

  	ribbon = Ribbon.new(1, 1, 10)
  	expect(ribbon.ribbon_needed).to eq(14)
  end
end