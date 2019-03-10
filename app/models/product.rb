class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :imagetwo, ImageUploader
	mount_uploader :imagethree, ImageUploader
	belongs_to :user
end
