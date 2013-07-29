class Ingredient < ActiveRecord::Base
  attr_accessible :content
  has_many :recipes, through :recipe_ingredients
end
