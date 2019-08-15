class Picture < ApplicationRecord
  validates :comment_or_image, presence: true
  belongs_to :user

  private

  def comment_or_image
    comment.presence or image.presence
  end
end
