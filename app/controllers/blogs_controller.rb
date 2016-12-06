class BlogsController < ApplicationController
  
  def index
    @blogs = Blog.all 
  end 

  def new
    @blog = Blog.new
  end 

  def create
    #@blog = Blog.new(params[:blog])
    #params.require(:profile).permit(:stage_name, :category, :user_id, :profile_type, :location, :username)
    @blog = Blog.new(params.require(:blog).permit(:title, :sub_title, :description))
    if @blog.save
      redirect_to blogs_path
    else
      redirect_to blogs_path
    end
    #render plain: params[:article].inspect
  end

  def show
    @blog = Blog.find(params[:id])
    #raise params.inspect
  end

  def edit
  end 

  def update
  end 

  def destroy
  end
end
