class Post < ActiveRecord::Base
  
  belongs_to :author
  belongs_to :category
  has_many :author_comments, dependent: :destroy
  
  attr_accessible :title, :body, :author_id, :category_id
  
  validates :category, presence: true
  
  
  def comment_count
    author_comments.count
  end
  
end
