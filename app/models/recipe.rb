class Recipe < ActiveRecord::Base
  attr_accessible :directions, :image, :name, :servings, :time
  has_many :ingredients, through :recipe_ingredients
  
end
