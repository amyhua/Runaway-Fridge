class AddRatingToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :rating, :float
    add_column :recipes, :reviewcount, :integer
  end
end
