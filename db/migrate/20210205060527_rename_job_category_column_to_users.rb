class RenameJobCategoryColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :job_category, :job_category_id
  end
end
