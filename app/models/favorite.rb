class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :solution
  valiates_uniqueness_of :solution_id, scope: :user_id
end
