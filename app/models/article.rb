class Article < ApplicationRecord
	mount_uploader :image, IamgeUploader
	belongs_to :user
end
