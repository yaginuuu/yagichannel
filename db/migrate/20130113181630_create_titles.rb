class CreateTitles < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.string :picture_file_name
      t.integer :picture_file_size
      t.string :picture_file_type
      t.datetime :picture_file_update_at

      t.timestamps
    end
  end
end
