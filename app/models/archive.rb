class Archive < ApplicationRecord
	belongs_to :user
	has_many :concerts
end
