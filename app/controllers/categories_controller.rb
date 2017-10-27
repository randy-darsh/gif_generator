class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to categories_path
  end

end
