class RenameStopNameToStopNames < ActiveRecord::Migration
  def change
    rename_column :stops, :name, :names
  end
end
