Rails.application.routes.draw do


  # resources :blogs
  # -- CHECK/uncomment to see if views path works

  resources :posts do
    resources :comments, except: :update
  end

  resources :blogs, only:[:index,:show]

  # resources :blogs, only:[:index,:show] do
  #   collection do
  #     get 'category/:url_slug' => 'blog#index',
      # as: :category
    # end
  # end
  root 'welcome#index', :as => :root

  # get '/galleries' => "welcome#galleries"
  # get '/buy'  => "welcome#buy"
  # get '/about'  => "welcome#about"
  # get '/contact' => "welcome#contact"
  # get '/studio' => "welcome#studio"

  # post '/send_mail' => 'contact#send_mail', :as => :send_mail

  get '/users/:id/delete_avatar' => 'users#delete_avatar'

  devise_for :users

end
