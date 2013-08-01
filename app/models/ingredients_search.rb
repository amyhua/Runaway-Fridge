class IngredientsSearch < ActiveRecord::Base
  belongs_to :ingredients
  belongs_to :searches
  
end
