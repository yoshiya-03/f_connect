class RenameWorksImageColumnToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :works_image, :works_image_id
  end
end
