class Ingredient < ActiveRecord::Base
  attr_accessible :name

<<<<<<< HEAD
  has_many :quantities
=======
  has_many :quantities, :dependent => :delete_all
>>>>>>> be93e8a06ea5d7d41a0a089e289656c8dd6ce796
  has_many :recipes, :through => :quantities

  has_many :ingredients_searches
  has_many :searches, :through => :ingredients_searches

  # define method to convert raw name given from form into its singular form
  
  # Find all ingredients across a certain set of recipes
  scope :in_recipes, lambda { |recipes| join(:quantities) 
                                        .where(recipe_id: recipes.map {|r| r.recipe_id} ) }
end
