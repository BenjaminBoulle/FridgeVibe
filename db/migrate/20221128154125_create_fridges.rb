class CreateFridges < ActiveRecord::Migration[7.0]
  def change
    create_table :fridges do |t|
      t.boolean :my_fridge
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
