class RecipesController < ApplicationController
  def show
    @recipe = MealDbApi.new.fetch_recipe(params[:id])
    render json: @recipe
  end
end
