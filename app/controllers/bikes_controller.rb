class BikesController < ApplicationController
  def index
    @bikes = Bike.all
    
  end
  
  def new
    @bike = Bike.new
  end
  
  def create
    @bike = Bike.create(bike_params)
    redirect_to Bike
  end
  
  def show
    @bike = Bike.find(params[:id])
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  respond_to :html, :json
  def update
    @bike = Bike.find(params[:id])
    @bike.update_attributes(bike_params)
    respond_with @bike
  end
  
  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to Bike
  end
  private
  def bike_params
    params.require(:bike).permit(:brand, :model, :color)
  end
end