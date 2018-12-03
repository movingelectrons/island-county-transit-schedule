class AddNotesToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :note, :text
  end
end
