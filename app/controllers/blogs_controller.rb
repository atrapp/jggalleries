class BlogsController < ApplicationController

   def index
    @posts = Post.order("created_at DESC").page params[:page]
    respond_to do |format|
      format.html
      format.json
    end
  end

end
