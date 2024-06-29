class RenameColumnsInFlights < ActiveRecord::Migration[7.1]
  def change
    rename_column :flights, :departing_airport_id, :departure_airport_id
    rename_column :flights, :arrivial_airport_id, :arrival_airport_id
  end
end
