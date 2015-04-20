class WelcomeController < ApplicationController

  def index
    @posts = Post.order("created_at DESC").first(3) #shows the latest 3 posts
  end

end
