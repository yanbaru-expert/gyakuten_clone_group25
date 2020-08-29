class Question < ApplicationRecord
  is_impressionable counter_cache: true
  has_many :solutions, dependent: :destroy
  validates :title, presence: true
  validates :detail, presence: true
end
