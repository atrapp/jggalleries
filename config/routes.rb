Rails.application.routes.draw do

  root 'welcome#index'

  resources :users

  get '/users/:id/delete_avatar' => 'users#delete_avatar'

end
