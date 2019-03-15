class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :capacity
      t.string :load_type
      t.integer :driver_id

      t.timestamps
    end
  end
end
