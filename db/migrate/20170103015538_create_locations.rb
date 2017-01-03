class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.float :location_lat, precision: 8
      t.float :location_long, precision: 8
      t.string :heat_zone
      t.string :cool_zone
      t.float :average_temp, precision: 2
      t.float :ann_rainfall, precision: 1

      t.timestamps null: false
    end
  end
end
