class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    Cat.create(allowed_parameters)
    redirect_to Cat
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update_attributes(allowed_parameters)
    redirect_to cat_path(@cat)
  end
  
  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to Cat
  end

  private

  def allowed_parameters
    params.require(:cat).permit(:cat_name, :cat_color, :kittens)
  end
end