class Search < ActiveRecord::Base
  attr_accessible :query

  has_many :ingredients_searches

  has_many :ingredients, :through => :ingredients_searches
  
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |ing| ing[:content].blank? }
end
