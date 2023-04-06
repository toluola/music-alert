class AddLastCheckedToSubscriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :subscriptions, :last_checked, :date
  end
end
