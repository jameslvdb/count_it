class CreateDailyLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :daily_logs do |t|
      t.float :weight
      t.date :date

      t.timestamps
    end
  end
end
