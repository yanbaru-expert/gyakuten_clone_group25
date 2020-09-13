class Text < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true

  include ActiveModel::Model

  attr_accessor :search_title

  def execute
    Text.ransack(title_cont: @search_title).result
  end

end
