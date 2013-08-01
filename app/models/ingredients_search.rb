class IngredientsSearch < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :search
  accepts_nested_attributes_for :ingredient, :reject_if => :all_blank
  
end
