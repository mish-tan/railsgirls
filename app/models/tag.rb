class Tag < ApplicationRecord
  has_many :idea_tags, dependent: :destroy, foreign_key: 'tag_id'
  has_many :ideas, through: :idea_tags
end
