class CreateArchives < ActiveRecord::Migration[5.1]
  def change
    create_table :archives do |t|
      t.string :api_id
      t.integer :user_id
      t.string :name
      t.string :img_url
      t.string :date
      t.string :time
      t.string :venue
      t.string :info
      t.string :category
      t.timestamps
    end
  end
end
