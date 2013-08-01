class Ingredient < ActiveRecord::Base
  attr_accessible :name

  has_many :quantities
  has_many :recipes, :through => :quantities

  has_many :ingredients_searches
  has_many :searches, :through => :ingredients_searches

  # define method to convert raw name given from form into its singular form
  
  # Find all ingredients across a certain set of recipes
  scope :in_recipes, lambda { |recipes| join(:quantities) 
                                        .where(recipe_id: recipes.map {|r| r.recipe_id} ) }
end
