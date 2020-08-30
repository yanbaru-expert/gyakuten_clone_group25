class Solution < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :favorites

  # validates :content, presence: true
  with_options presence: true do
    validates :content
    validates :user_id
  end
end
