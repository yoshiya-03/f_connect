class CreateWorksImages < ActiveRecord::Migration[5.2]
  def change
      create_table :works_images do |t|
      t.integer "user_id", null: false
      t.string "works_image_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.timestamps
    end
  end
end
