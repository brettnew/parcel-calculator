require 'rspec'
require 'parcel'

describe Parcel  do
  describe('#volume') do
    it('will calculate volume of the parcel by multiplying height, width, and depth') do
      new_parcel = Parcel.new('3', '4', '5', '1')
      expect(new_parcel.volume()).to(eq(60))
    end
  end
  describe('#cost_to_ship') do
    it('will calculate cost to ship the parcel by evaluating volume, weight and delivery option') do
      new_parcel = Parcel.new('3', '4', '5', '5')
      expect(new_parcel.cost_to_ship('overnight')).to(eq(64))
    end
  end
end
