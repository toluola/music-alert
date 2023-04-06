class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.string :spotify_track_id

      t.timestamps
    end
  end
end
