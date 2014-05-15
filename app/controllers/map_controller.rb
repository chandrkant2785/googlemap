class MapController < ApplicationController
  def index
  end
  def home
  	if params[:source].present? && params[:destination].present?
      @source = Geocoder.search(params[:source]).first
      @destination = Geocoder.search(params[:destination]).first
      
    end
  end

  def dist
  if params[:source].present? && params[:destination].present?
      @source = Location.near(params[:source], 0, :order => :distance).last
      @destination = Location.near(params[:destination], 0, :order => :distance).last
    end
end
end
