class AddAttachmentImageToConcerts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :concerts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :concerts, :image
  end
end
