class Question < ApplicationRecord
  has_many :solutions, dependent: :destroy
  validates :title, presence: true
  validates :detail, presence: true
end
