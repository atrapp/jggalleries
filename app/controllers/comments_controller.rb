class CommentsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :update, :delete]
  before_action :verify_authorship, only: [:destroy]

  def index

  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new(:post=>@post)
  end

  def create
    post = Post.find(params[:post_id])
    new_comment = Comment.create(comment_params)
    post.comments << new_comment
    current_user.comments << new_comment
    redirect_to blog_path(post)
  end

  def edit
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:id])
  end

  def show
   @post = Post.find(params[:post_id])
   @comment = Comment.find(params[:id])
  end

  def destroy
    @comment.destroy
    redirect_to blog_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end

  def verify_authorship
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])

    unless current_user==@comment.user or current_user.is_admin?
      redirect_to blog_path(@post)
    end
  end

end
