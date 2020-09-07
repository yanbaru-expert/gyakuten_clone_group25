class Read < ApplicationRecord
  belongs_to :readable, polymorphic: true 
  
end
