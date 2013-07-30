class Search < ActiveRecord::Base
  attr_accessible :query
  has_and_belongs_to_many :ingredients
end
