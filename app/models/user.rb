class User < ApplicationRecord
	has_secure_password
	has_many :concerts, dependent: :destroy
	has_many :archives, dependent: :destroy
	validates :location, numericality: { only_integer: true }
	validates :location, length: { is: 5 }
end
