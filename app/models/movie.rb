class Movie < ActiveRecord::Base

  def self.rating_options
    pluck(:rating).uniq
  end

  def self.filtered_ratings(selected)
    chosen = []
    selected.each { |x,y| chosen << x }
    chosen
  end

end
