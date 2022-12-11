class CreateRides < ActiveRecord::Migration[7.0]
  def change
    create_table :rides do |t|
      t.string :startStation
      t.string :endStation
      t.time :startTime
      t.time :endTime

      t.timestamps
    end
  end
end
