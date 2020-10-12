class Movie < ApplicationRecord
  belongs_to :user
  has_many :like_movies
  validates :title, presence: true
  validates :url, presence: true
  validates :category, presence: true

  SELECTION_MOVIIES = ["Basic", "Git", "Ruby", "Ruby on Rails"]

  def self.select_movies(category)
    if category.present?
      where(category: category)
    else
      where(category: SELECTION_MOVIIES)
    end
  end

  def like_movied_by?(user)
    like_movies.where(user_id: user.id).exists?
  end

end
