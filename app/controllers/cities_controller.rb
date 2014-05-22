class CitiesController < ApplicationController
  def index
    @cities = City.all
    @zones = { "Eastern" => 1, "Central" => 2, "Mountain" => 3, "Pacific" => 4 }
  end
  
  def new
    @city = City.new
  end
  
  def create
    City.create(city_params)
    redirect_to City
  end
  
  private
  
  def city_params
    params.require(:city).permit(:city_name, :state, :time_zone)
  end
end