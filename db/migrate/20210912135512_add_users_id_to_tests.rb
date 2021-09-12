class AddUsersIdToTests < ActiveRecord::Migration[6.1]
  def change
    add_column :tests, :users_id, :string
  end
end
