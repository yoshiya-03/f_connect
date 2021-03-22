class AddJobCategoryToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :job_category_id, :integer
  end
end
