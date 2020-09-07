class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_solutions, through: :favorites, source: :soulution
  has_many :reads, as: :readable
  has_many :line_reads, through: :reads, source: :readable, source_type: 'Line'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
