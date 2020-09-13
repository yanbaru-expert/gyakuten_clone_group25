class Line < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :contents, presence: true
  has_many :reads, as: :readable
  def read_by?(user_id)
    reads.where(user_id:user_id).exists?
  end
end
