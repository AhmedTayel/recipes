class RecipesController < ApplicationController
  def index
    @recipes = Recipe.order(created_at: :desc).page(params[:page])
  end
  def show
    @recipe = Recipe.find(params[:id])
  end
  def new
    @recipe = Recipe.new
  end
  def create
    @recipe = Recipe.create_from_url params[:recipe][:URL]  
    redirect_to recipes_path
  end
  def delete
    Recipe.find(params[:id]).destroy
    redirect_to recipes_path
  end
end
