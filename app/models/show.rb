class Show < ActiveRecord::Base

  def self.highest_rating
    show = Show.maximum(:rating)
    binding.pry
  end

  def self.most_popular_show

  end


end
