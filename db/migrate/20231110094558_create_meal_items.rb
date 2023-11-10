class CreateMealItems < ActiveRecord::Migration[7.1]
  def change
    create_table :meal_items do |t|
      t.belongs_to :meal, null: false, foreign_key: true
      t.belongs_to :consumable, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
