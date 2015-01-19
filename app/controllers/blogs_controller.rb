class BlogsController < ApplicationController

  def index
   @posts=Post.order("created_at DESC").page(params[:page].per(2).includes(:comments)
  end

  def show
   @post = Post.find(params[:id])
   @comment = Comment.new(:post=>@post)
  end


end
