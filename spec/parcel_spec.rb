require 'rspec'
require 'parcel'

describe Parcel  do
  describe('#volume') do
    it('will calculate volume of the parcel by multiplying height, width, and depth') do
      new_parcel = Parcel.new('3', '4', '5', '0')
      expect(new_parcel.volume()).to(eq(60))
    end
  end
end
