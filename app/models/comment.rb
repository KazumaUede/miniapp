class Comment < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user
end
