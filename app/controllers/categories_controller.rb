class CategoriesController < ApplicationController

  before_action :find_category, only: [:edit, :show, :update, :destroy]


  def index
    @categories = Category.paginate(:page => params[:page], :per_page => 5)
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private
  def find_category
    @category = Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit(:title)
  end
end
