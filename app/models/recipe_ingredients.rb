class RecipeIngredients < ActiveRecord::Base
  attr_accessible :ingredient_text
  belongs_to :ingredient
  belongs_to :recipe
end
