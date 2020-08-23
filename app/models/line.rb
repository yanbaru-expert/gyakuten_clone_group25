class Line < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :contents, presence: true
end
