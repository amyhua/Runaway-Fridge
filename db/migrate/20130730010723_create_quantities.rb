class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.string :content
      t.references :recipe
      t.references :ingredient

      t.timestamps
    end
    add_index :quantities, :recipe_id
    add_index :quantities, :ingredient_id
  end
end
