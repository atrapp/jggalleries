class BlogsController < ApplicationController

   def index
    @posts = Post.order("created_at DESC").page params[:page]

    # this is added, so when hitting the "back" button on the post view no json shows up
    # but it also disables the ajax pagination with kaminari
    respond_to do |format|
      format.html
      format.json
    end

  end

end
