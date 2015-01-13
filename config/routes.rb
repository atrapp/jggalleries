Rails.application.routes.draw do

  # resources :blogs
  # -- CHECK/uncomment to see if views path works

  resources :posts do
    resources :comments, except: :update
  end

  # resources :blogs, only:[:index,:show] do
  #   collection do
  #     get 'category/:url_slug' => 'blog#index',
      # as: :category
    # end
  # end
  root 'welcome#home', :as => :root

  # get '/galleries' => "welcome#galleries"
  # get '/buy'  => "welcome#buy"
  # get '/about'  => "welcome#about"
  # get '/contact' => "welcome#contact"
  # get '/studio' => "welcome#studio"

  # post '/send_mail' => 'contact#send_mail', :as => :send_mail

  resources :users

  get '/users/:id/delete_avatar' => 'users#delete_avatar'

  devise_for :users

end


# $ bin/rake routes
#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         welcome#index
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
