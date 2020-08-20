class Movie < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true
  validates :category, presence: true

  SELECTION_MOVIIES = %W[Basic Git Ruby #{"Ruby on Rails"}]

  def self.select_movies(category)
    if category.present?
      where(category: category)
    else
      where("category IN(?)", SELECTION_MOVIIES)
    end
  end
end
