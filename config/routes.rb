Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  get '/myprojects' => 'posts#list'
  root to: 'visitors#index'
  devise_for :users
  resources :users, :only => [:show]
  

end
