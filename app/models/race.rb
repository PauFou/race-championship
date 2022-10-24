class Race < ApplicationRecord
  belongs_to :championship
  belongs_to :user
  has_one :track
end
