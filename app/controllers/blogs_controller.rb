class BlogsController < ApplicationController

  def index

   @posts=Post.order("created_at DESC")#.page params[:page]

  end

  def show
   @post = Post.find(params[:id])
   @comment = Comment.new(:post=>@post)
  end

end
