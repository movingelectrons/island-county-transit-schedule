class DropIndexFromStops < ActiveRecord::Migration
  def change
    remove_column :stops, :index
  end
end
