class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  has_one :ratingjunctions, as: :rateable
  has_one :ratings, through: :ratingjunctions
end
