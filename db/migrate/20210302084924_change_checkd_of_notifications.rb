class ChangeCheckdOfNotifications < ActiveRecord::Migration[5.2]
 def up
    change_column :notifications, :checked, :boolean, default: 'false'
 end

# ↓は元々の状態

  def down
    change_column :notifications, :checked, :boolean
  end
end
