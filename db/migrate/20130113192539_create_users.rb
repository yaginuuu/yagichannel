class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider, :null => false
      t.string :uid, :null => false
      t.string :screen_name, :null => false, :uniq => true
      t.string :name, :null => false
      t.string :image
      t.string :provider
      t.string :screen_name

      t.timestamps
    end
  end
end
