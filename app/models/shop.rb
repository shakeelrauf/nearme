class Shop < ApplicationRecord
	mount_uploader :imageshop, ImageUploader
	belongs_to :user
	has_many :products
end
