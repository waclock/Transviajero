class AddViceversaToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :viceversa, :boolean
  end
end
