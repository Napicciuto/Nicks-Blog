class PagesController < ApplicationController
  
  def index
    @page_title = 'Welcome to my sample Blog'
    @categories = Category.favorite.sample(3)
  end
  
  def categories
    @category = Category.find(params[:category_id])
    @post_list = Post.where(category_id: params[:category_id])
    @posts = Post.new
  end
  
  def posts
    @posts = Post.find_by_id(params[:post_id])
    @new_comment = AuthorComment.new
  end
  
  def post_create
     @posts = Post.new(params[:post])
     if @posts.save
       redirect_to :back, notice: 'Your Post was successfully created.'
     else
       redirect_to :back, notice: 'Your Post was not successfully created.'
     end
   end
  
  def comment_create
    @author_comment = AuthorComment.new(params[:author_comment])
    if @author_comment.save
      redirect_to :back, notice: 'Your Post was successfully created.'
    else
      redirect_to :back, notice: 'Your Post was not successfully created.'
    end
  end
  
end