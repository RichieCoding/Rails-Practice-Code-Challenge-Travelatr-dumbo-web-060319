class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts


  def five_most_post
    self.posts.sort_by {|post| post.updated_at}[0..4]
  end

  def most_popular
    self.posts.sort_by { |post| post.likes }[0]
  end

end
