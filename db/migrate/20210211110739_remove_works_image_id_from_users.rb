class RemoveWorksImageIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :works_image_id, :string
  end
end
