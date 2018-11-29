class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :route_id
      t.string :name
      t.integer :index

      t.timestamps null: false
    end
  end
end
