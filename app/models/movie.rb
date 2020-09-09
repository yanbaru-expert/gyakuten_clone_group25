class Movie < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true
  validates :category, presence: true
  has_many :checks, as: :checkable

  SELECTION_MOVIIES = ["Basic", "Git", "Ruby", "Ruby on Rails"]

  def self.select_movies(category)
    if category.present?
      where(category: category)
    else
      where(category: SELECTION_MOVIIES)
    end
  end

  def checked_by?(user)
    checks.where(user_id:user.id).exists?
  end
end
