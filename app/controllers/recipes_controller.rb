class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.render_all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = Recipe.render(params[:id])
  end
end
