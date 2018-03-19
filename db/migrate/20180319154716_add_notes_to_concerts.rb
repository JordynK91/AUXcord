class AddNotesToConcerts < ActiveRecord::Migration[5.1]
  def change
  	add_column :concerts, :notes, :string
  end
end
