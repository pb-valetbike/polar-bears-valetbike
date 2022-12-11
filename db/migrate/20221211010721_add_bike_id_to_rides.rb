class AddBikeIdToRides < ActiveRecord::Migration[7.0]
  def change
    add_column :rides, :bikeid, :integer
  end
end
