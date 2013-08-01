class RemoveTimestampsFromIngredients < ActiveRecord::Migration
  def up
    remove_column :ingredients, :created_at
    remove_column :ingredients, :updated_at
  end

  def down
    add_column :ingredients, :updated_at, :string
    add_column :ingredients, :created_at, :string
  end
end
