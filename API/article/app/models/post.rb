class Post < ApplicationRecord
	mount_uploader :image, CoverUploader
end
