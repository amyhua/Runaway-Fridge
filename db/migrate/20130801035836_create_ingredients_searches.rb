class CreateIngredientsSearches < ActiveRecord::Migration
  def change
    create_table :ingredients_searches do |t|

      t.timestamps
    end
  end
end
