class BlogsController < ApplicationController

  def index
   @posts=Post.order("created_at DESC")
  end

  def show
   @post = Post.find(params[:id])
   @comment = Comment.new(:post=>@post)
  end

end
