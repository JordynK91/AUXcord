class Concert < ApplicationRecord
	belongs_to :user
	# paperclip stuff
	has_attached_file :image, styles: { small: "64x64", med: "350x200", large: '450x300' }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
