class MapController < ApplicationController
  def index
  end
  def home
  	directions = GoogleDirections.new(origin, destination)
  end
end
