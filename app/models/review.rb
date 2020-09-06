class Review < ApplicationRecord
  belongs_to :user
  belongs_to :player
  validates :score, presence: true
  validates_uniqueness_of :player_id, scope: :user_id
end
