class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image
      t.text :directions
      t.integer :time
      t.integer :servings

      t.timestamps
    end
  end
end
