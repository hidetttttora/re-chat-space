class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user

  has_many_attached :posts_image

  validates :content, presence: true, unless: :image?
end
