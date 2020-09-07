class Read < ApplicationRecord
  belongs_to :readable, polymorphic: true 
  belongs_to :user
end
