class CategoriesController < ApplicationController

  before_action :find_category, only: [:edit, :show]


  def index
    #@categories = Category.all
    @categories = Category.paginate(:page => params[:page], :per_page => 5)
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit(:title))
    if @category.save
      redirect_to categories_path
    else
      render :new
    end

  end

  def edit
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(params.require(:category).permit(:title))
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private
  def find_category
    @category = Category.find(params[:id])
  end
end
