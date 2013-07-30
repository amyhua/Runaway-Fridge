class Ingredient < ActiveRecord::Base
  attr_accessible :name
  has_many :quantities
  has_many :recipes, :through => :quantities

  # define method to convert raw name given from form into its singular form
end
