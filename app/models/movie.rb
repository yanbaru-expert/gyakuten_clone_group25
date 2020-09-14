class Movie < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true
  validates :category, presence: true
  has_many :reads, as: :readable

  SELECTION_MOVIIES = ["Basic", "Git", "Ruby", "Ruby on Rails"]

  def self.select_movies(category)
    if category.present?
      where(category: category)
    else
      where(category: SELECTION_MOVIIES)
    end
  end

  def read_by?(user_id)
    reads.where(user_id:user_id).exists?
  end
end
