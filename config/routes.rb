Rails.application.routes.draw do

  root 'welcome#index', :as => :root

  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions"}
  resources :users

  resources :blogs, only:[:index,:show]

  resources :posts do
    resources :comments, except: :update
  end

  # get '/galleries' => "welcome#galleries"
  # get '/buy'  => "welcome#buy"
  # get '/about'  => "welcome#about"
  # get '/contact' => "welcome#contact"
  # get '/studio' => "welcome#studio"

  # post '/send_mail' => 'contact#send_mail', :as => :send_mail

  get '/users/:id/delete_avatar' => 'users#delete_avatar'

end
