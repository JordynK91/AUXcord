class UserChangeColumnType < ActiveRecord::Migration[5.1]
  def change
  	change_column(:users, :location, :integer)
  end
end
