class AddNewFieldToSubscriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :subscriptions, :email, :string
    add_column :subscriptions, :artist_name, :string
    add_column :subscriptions, :artist_id, :string
  end
end
