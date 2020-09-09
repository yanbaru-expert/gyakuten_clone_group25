class Line < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :contents, presence: true
  has_many :reads, as: :readable
  def read_by?(user)
    reads.where(user_id:user.id).exists?
  end
end
