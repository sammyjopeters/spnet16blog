require 'rails_helper'

RSpec.describe Location, :type => :model do

  context 'validations' do
  	context 'a valid geolat' do
	    it { should validate_presence_of(:location_lat) }
	    it { should validate_presence_of(:location_long) }
	end

	context 'a valid rainfall measurement' do
		it { should allow_value(10).for(:ann_rainfall) }
		it { should_not allow_value(-2.6).for(:ann_rainfall) }
	end
  end

  context 'relationships' do
    it { should have_many(:gardens) }
  end

end