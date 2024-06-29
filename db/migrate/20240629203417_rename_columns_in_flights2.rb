class RenameColumnsInFlights2 < ActiveRecord::Migration[7.1]
  def change
    rename_column :flights, :arrivial_time, :arrival_time
  end
end
