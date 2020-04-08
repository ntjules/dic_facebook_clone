class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :content, presence: true, unless: ->(post) { post.image.present? }
  validates :image, presence: true, unless: ->(post) { post.content.present? }

  # validate :post_or_image

  # private

  # def post_or_image
  #   unless image.blank? ^ content.blank?
  #     errors.add(:base, "Image and Content can't both be empty")
  #   end
  # end
end
