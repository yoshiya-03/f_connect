class CreateJobCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :job_categories do |t|
      t.string :name,       null: false
      t.integer :category, default: 0
      t.timestamps
    end
  end
end
