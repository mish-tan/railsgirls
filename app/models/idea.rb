class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :idea_tags, dependent: :destroy
  has_many :tags, through: :idea_tags
end
