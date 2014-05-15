class Location < ActiveRecord::Base
  #attr_accessible :address, :latitude, :longitude, :name
  attr_accessible :address, :latitude, :longitude, :name
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
     
end
