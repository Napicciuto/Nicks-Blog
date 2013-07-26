class Author < ActiveRecord::Base
  
  has_many :posts

  attr_accessible :first_name, :last_name, :email, :address, :city, :state, :zip, :about_me, :company, :post_count, :last_post
  
  # full name of author
  def full_name
    "%s %s" % [first_name,last_name ] rescue nil
  end
  
  # date for last post auther made
  # TO-DO ~ poke user to post more via mailer 
  def last_post
    posts.last.created_at
  end
  
  # count all post author made
  def post_count
    posts.count
  end

end
