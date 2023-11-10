class CreateConsumables < ActiveRecord::Migration[7.1]
  def change
    create_table :consumables do |t|
      t.string :name
      t.integer :calories
      t.integer :carbs_in_grams
      t.integer :protein_in_grams
      t.integer :total_fat_in_grams
      t.integer :sodium_in_mg

      t.timestamps
    end
  end
end
