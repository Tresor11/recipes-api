class CategoriesController < ApplicationController
  def index
    @meals = MealDbApi.new.fetch_categories
    render json: @meals
  end

  def show
    @meals = MealDbApi.new.fetch_meals_by_category(params[:id])
    render json: @meals
  end
end