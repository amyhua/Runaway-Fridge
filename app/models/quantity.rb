class Quantity < ActiveRecord::Base
  attr_accessible :content, :ingredient, :ingredient_attributes
  belongs_to :recipe
  belongs_to :ingredient
  accepts_nested_attributes_for :ingredient, :reject_if => :all_blank
  
  scope :with_ingredient_in, lambda { |ingredient| where(ingredient.id = ingredient_id )}
  
  def self.recipe_ingredient_content(recipeid,ingredientid)
    select { |qty| qty.recipe_id == recipeid && qty.ingredient_id == ingredientid}
  end
  
  def self.where_recipe(recipeid)
    self.select { |qty| qty.recipe_id == recipeid }
  end
  
end
