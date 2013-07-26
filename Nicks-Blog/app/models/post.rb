class Post < ActiveRecord::Base
  
  belongs_to :author
  has_many :author_comments
  
  attr_accessible :title, :body, :author_id
  
  def comment_count
    author_comments.count
  end
  
end
