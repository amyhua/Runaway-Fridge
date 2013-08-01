class CreateIngredientsSearches < ActiveRecord::Migration
  def change
    create_table :ingredients_searches do |t|
    t.references :ingredient
    t.references :search
    

    end
    add_index :ingredients_searches, :ingredient_id
    add_index :ingredients_searches, :search_id
  end
end
