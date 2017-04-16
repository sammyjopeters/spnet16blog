class Location < ActiveRecord::Base
	validates_presence_of :location_lat, :location_long
	validates :ann_rainfall, numericality: { greater_than_or_equal_to: 0 } 
	has_many :gardens
end
