class RecipesController < ApplicationController

  load_and_authorize_resource param_method: :recipe_params


  def index
    if params[:search]
      @recipes = Recipe.search(params[:search]).order("created_at ASC").paginate(:page => params[:page], :per_page => 5)
    elsif params[:category_id]
      @recipes = Recipe.where(category_id: params[:category_id]).order("created_at ASC").paginate(:page => params[:page], :per_page => 5)
    else
      @recipes = Recipe.order("created_at ASC").paginate(:page => params[:page], :per_page => 5)
    end

  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipes_path
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private
  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  private
  def recipe_params
    params.require(:recipe).permit(:category_id, :title, :text)
  end
end
