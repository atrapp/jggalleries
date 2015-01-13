class BlogsController < ApplicationController

  def index
   @posts=Post.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
  end

  def show
   @post = Post.find(params[:id])
   @comment = Comment.new(:post=>@post)
  end


end
