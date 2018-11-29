class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :stop_id
      t.string :time
      t.integer :index

      t.timestamps null: false
    end
  end
end
