class Author < ActiveRecord::Base
  
  
  devise :database_authenticatable, :recoverable, :rememberable, :validatable
  
  has_many :posts, dependent: :destroy

  attr_accessible :first_name, :last_name, :email, :address, :city, :state, :zip, :about_me, :company, :post_count, :last_post, :password, :password_confirmation, :remember_me
  
  validates :first_name, :last_name, :email, presence: true
  
  # full name of author
  def full_name
    "%s %s" % [first_name,last_name ] rescue nil
  end
  
  # date for last post auther made
  # TO-DO ~ poke user to post more via mailer 
  def last_post
    posts.last.created_at rescue "No Posts"
  end
  
  # count all post author made
  def post_count
    posts.count
  end

end
