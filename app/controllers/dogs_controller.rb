class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end
  
  def new
    @dog = Dog.new
  end
  
  def create
    Dog.create(dog_params)
    redirect_to Dog
  end
  
  def show
    @dog = Dog.find(params[:id])
  end
  
  def edit
    @dog = Dog.find(params[:id])
  end
  
  def update
    @dog = Dog.find(params[:id])
    @dog.update_attributes(dog_params)
    redirect_to dog_path(@dog)
  end
  
  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to Dog
  end
  
  private
  
  def dog_params
    params.require(:dog).permit(:dog_name, :dog_breed, :spay_neuter)
  end
end