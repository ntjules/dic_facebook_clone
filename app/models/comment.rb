class Comment < ApplicationRecord
  belongs_to :post
  scope :recent, -> { order(created_at: :desc) }
end
