class Post < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :truncated_preview, presence: true
end
