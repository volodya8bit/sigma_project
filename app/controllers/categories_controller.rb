class CategoriesController < ApplicationController
  def create
  end

  def read
    @categories = Category.all
  end

  def update
  end

  def delete
  end
end
