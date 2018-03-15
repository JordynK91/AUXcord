class AddUserIdToConcerts < ActiveRecord::Migration[5.1]
  def change
    add_column :concerts, :user_id, :integer
  end
end
