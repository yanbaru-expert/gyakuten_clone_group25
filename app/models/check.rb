class Check < ApplicationRecord
  belongs_to :user
  belongs_to :checkable, polymorphic: true
  validates :user_id, uniqueness: { scope: [:checkable_type,:checkable_id] } 
end
