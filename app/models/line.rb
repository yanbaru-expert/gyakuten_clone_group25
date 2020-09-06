class Line < ApplicationRecord
  has_many :reads, as: :readable

  validates :genre, presence: true
  validates :title, presence: true
  validates :contents, presence: true
end
