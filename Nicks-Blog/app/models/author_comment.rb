class AuthorComment < ActiveRecord::Base
  
  belongs_to :post
  
  attr_accessible :body, :post_id

end
