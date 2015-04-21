class PostsController < ApplicationController

  before_action :verify_if_admin, only: [:new, :create, :edit, :update, :destroy]

  respond_to :html

  def index
    @posts = Post.all.order("created_at DESC")
    respond_with(@posts)
  end

  def show
    @post = Post.find(params[:id])
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.save
    respond_with(@post)
  end

  def edit
    @post = Post.find(params[:id])
    respond_with(@post)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_with(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def verify_if_admin
    unless current_user && current_user.is_admin?
      redirect_to blogs_path
    end
  end

end
