class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :load_type
      t.integer :load_sum
      t.string :cities
      t.integer :stops_amount
      t.integer :vehicle_id
      t.integer :driver_id

      t.timestamps
    end
  end
end
