class AddUniqueIndexToFields < ActiveRecord::Migration[6.1]
  def change
    add_index :subscriptions, :email, unique: true
    add_index :subscriptions, :artist_id, unique: true
    add_index :subscriptions, :artist_name, unique: true
  end
end
