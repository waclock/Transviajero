class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :origin
      t.string :destination
      t.string :activity
      t.string :passenger
      t.integer :value
      t.string :observation

      t.timestamps
    end
  end
end
