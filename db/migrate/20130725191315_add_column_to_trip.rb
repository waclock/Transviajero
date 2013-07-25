class AddColumnToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :observation_en, :string, :default => ""
    add_column :trips, :passenger_en, :string, :default => ""
  end
end
