class Solution < ApplicationRecord
  belongs_to :question
  has_many :favorites

  # validates :content, presence: true
  with_options presence: true do
    validates :content
  end

  def favorited_by?(user_id)
    favorites.where(user_id: user_id).exists?
  end
end
