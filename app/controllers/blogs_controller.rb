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
    @blog = Blog.find(params[:id])
  end 

  def update
    #raise params.inspect
    @blog = Blog.find(params[:id]);
    @blog.update_attributes(blog_params);
    redirect_to blog_path(@blog)
  end 

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end

  private
  
  def blog_params
    params.require(:blog).permit(:title, :sub_title, :description)
  end 

end
