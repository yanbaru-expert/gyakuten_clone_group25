class Solution < ApplicationRecord
  belongs_to :question
  has_many :favorites

  # validates :content, presence: true
  with_options presence: true do
    validates :content
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
