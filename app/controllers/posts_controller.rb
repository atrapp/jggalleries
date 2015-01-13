class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :verify_if_admin

  respond_to :html

  def index
    @posts = Post.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
    respond_with(@posts)
  end

  def show
    @post = Post.new
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def edit
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.save
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end



  private

      def set_post
        @post = current_user.posts.find(params[:id])
      end

      def post_params
        params.require(:post).permit(:title, :body)
      end

      def verify_if_admin

        unless current_user && current_user.is_admin?
          redirect_to blog_index_path
      end
  end
end
