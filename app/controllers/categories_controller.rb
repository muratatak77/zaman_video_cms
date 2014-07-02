class CategoriesController < ApplicationController

  before_action :set_category, only: [:show, :update, :destroy, :edit]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show 
  end

  def create
    @category = Category.create(permit_params)
    redirect_to categories_path
  end

  def edit
  end

  def update
    @category.update(permit_params)
    redirect_to categories_path
  end


  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private
  def set_category   
   @category = Category.find(params[:id])   
  end

  def permit_params
    params.require(:category).permit(:name)
  end

end
