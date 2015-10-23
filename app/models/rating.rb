class Rating < ActiveRecord::Base
  enum severity: [ :PG, :PG13, :R ]
  has_many :ratingjunction
  belongs_to :rateable, polymorphic: true
  has_many :topics, through: :ratingjunction, source: :rateable, source_type: :Topic
  has_many :posts, through: :ratingjunction, source: :rateable, source_type: :Post

  def self.update_rating(rating_string)
    
  end
end
