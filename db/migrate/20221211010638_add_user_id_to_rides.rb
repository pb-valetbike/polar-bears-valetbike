class AddUserIdToRides < ActiveRecord::Migration[7.0]
  def change
    add_column :rides, :user_id, :integer
  end
end
