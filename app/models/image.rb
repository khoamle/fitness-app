class Image < ActiveRecord::Base
  belongs_to :exercise
  mount_uploader :image, ImageUploader
end
