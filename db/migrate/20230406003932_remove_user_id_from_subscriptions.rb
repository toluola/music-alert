class RemoveUserIdFromSubscriptions < ActiveRecord::Migration[6.1]
  def change
    remove_column :subscriptions, :user_id, :string
    remove_column :subscriptions, :spotify_track_id, :string
  end
end
