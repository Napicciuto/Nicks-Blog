class ApiController < ApplicationController

  before_filter :authenticate_customer!, :except => [:blog_feed, :categories, :posts, :authors]

  respond_to :json, :xml
  
  def blog_feed
    @category = Category.all
  end
  
  def categories
 	 @category = Category.all
  end
  
  def posts
	  @post = Post.all
  end
  
  def authors
  	@author = Author.all
  end
  
    
end