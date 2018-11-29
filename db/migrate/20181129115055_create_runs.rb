class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :route_id
      t.string :times
      t.integer :index

      t.timestamps null: false
    end
  end
end
