class CreateEarthquakes < ActiveRecord::Migration[5.0]
  def change
    create_table :earthquakes do |t|
      t.string :apiID
      t.decimal :mag
      t.float :longitude
      t.float :latitude
      t.string :place

      t.timestamps
    end
  end
end
