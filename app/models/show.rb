class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    result = Show.highest_rating
    show = Show.find_by(rating: "#{result}")
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    result = Show.lowest_rating
    show = Show.find_by(rating: "#{result}")
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.all.collect {|s| s.rating > 5 }
  end
  
end
