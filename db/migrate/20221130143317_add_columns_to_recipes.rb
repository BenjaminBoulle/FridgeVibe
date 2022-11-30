class AddColumnsToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :author, :string
    add_column :recipes, :cuisine, :string
    add_column :recipes, :cook_time, :integer
    add_column :recipes, :prep_time, :integer
    add_column :recipes, :rating, :float
  end
end
