Rails.application.routes.draw do
  devise_for :users
  
  root 'homes#top'
  resources :users,only: [:show,:index,:edit,:update] do
   member do
  get :follows
  get :follower
     end
  end
  resources :books
  resources :relationships,only: [:create,:destroy]
  get 'home/about' => 'homes#about'

end
