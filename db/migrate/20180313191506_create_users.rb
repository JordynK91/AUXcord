class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :location
      t.string :name
      t.string :email
      t.string :faves
      t.string :bio
      t.string :achievements
      t.timestamps
    end
  end
end
