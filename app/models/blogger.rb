class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  def most_popular
    self.posts.sort_by { |post| post.title }[0]
  end

  def top_five_destination
    self.destinations.sort_by { |destination| destination.posts.count}[0..4] 
  end

end
