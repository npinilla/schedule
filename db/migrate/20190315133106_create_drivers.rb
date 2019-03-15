class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :vehicle_id
      t.string :cities
      t.integer :max_stops
      t.datetime :next_available_time

      t.timestamps
    end
  end
end
