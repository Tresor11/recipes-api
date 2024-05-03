require 'httparty'

class MealDbApi
  def fetch_categories
    HTTParty.get('https://www.themealdb.com/api/json/v1/1/categories.php')
  end

  def fetch_meals_by_category(category)
    HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category}")
  end

  def fetch_meal_by_id(id)
    HTTParty.get("https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}")
  end

  def fetch_recipe_by_id(id)
    HTTParty.get("https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}")
  end
end