class ChangeDataBasedInToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :based_in, :integer
  end
end
