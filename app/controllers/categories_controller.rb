class CategoriesController < ApplicationController
  def index
    @meals = MealDbApi.new.fetch_categories
    render json: @meals
  end
end