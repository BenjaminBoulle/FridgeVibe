class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.date :expiration_date
      t.references :fridge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
