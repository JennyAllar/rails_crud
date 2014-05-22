class CitiesController < ApplicationController
  def index
    @cities = City.all
  end
  
  def new
    @city = City.new
  end
  
  def create
    City.create(city_params)
    redirect_to City
  end
  
  def show
    @city = City.find(params[:id])
  end
  
  def edit
    @city = City.find(params[:id])
  end
  
  def update
    @city = City.find(params[:id])
    @city.update_attributes(city_params)
    redirect_to City
  end
  
  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to City
  end
  
  private
  
  def city_params
    params.require(:city).permit(:city_name, :state, :time_zone)
  end
end