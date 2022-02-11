class Article < ApplicationRecord
	mount_uploader :image, IamgeUploader
end
