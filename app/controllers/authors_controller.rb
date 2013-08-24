class AuthorsController < ApplicationController
    
  def new
    @page_title = "Create Account"
    @author = Author.new    
  end
  
  def create
    @author = Author.new(params[:author])
    if @author.save
      redirect_to thanks_path, notice: 'Account was successfully created.'
    else
      render :action => 'new'
    end
  end

end