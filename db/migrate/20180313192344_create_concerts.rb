class CreateConcerts < ActiveRecord::Migration[5.1]
  def change
    create_table :concerts do |t|
      t.string :api_id
      t.string :category
      t.timestamps
    end
  end
end
