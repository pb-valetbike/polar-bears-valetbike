class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.integer :identifier
      t.string :name
      t.string :address
      t.string :xcoord
      t.string :ycoord
      t.string :dock_count

      t.timestamps
    end
  end
end
