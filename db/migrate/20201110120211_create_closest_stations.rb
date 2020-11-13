class CreateClosestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :closest_stations do |t|
      t.string :route_name
      t.string :station_name
      t.integer :walk_minutes
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
