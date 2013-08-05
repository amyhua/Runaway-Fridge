class RemoveTimestampsFromRecipes < ActiveRecord::Migration
  def up
    remove_column :recipes, :created_at
    remove_column :recipes, :updated_at
  end

  def down
    add_column :recipes, :updated_at, :string
    add_column :recipes, :created_at, :string
  end
end
