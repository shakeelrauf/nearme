class Shop < ApplicationRecord
	mount_uploader :imageshop, ImageUploader
	belongs_to :user
end
