class AddNotesToArchives < ActiveRecord::Migration[5.1]
  def change
  	add_column :archives, :notes, :string
  end
end
