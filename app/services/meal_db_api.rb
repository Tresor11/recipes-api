require 'httparty'

class MealDbApi
  def fetch_categories
    HTTParty.get('https://www.themealdb.com/api/json/v1/1/categories.php')
  end
end