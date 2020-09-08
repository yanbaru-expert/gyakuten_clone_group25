class Read < ApplicationRecord
  belongs_to :readable, polymorphic: true 
  belongs_to :user
  validates :user_id, :uniqueness => { :scope => [:readable_type, :readable_id] }
end
