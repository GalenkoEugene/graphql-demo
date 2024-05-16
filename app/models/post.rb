class Post < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :truncated_preview, presence: true

  alias gid to_gid_param
end
