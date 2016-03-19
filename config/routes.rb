Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'pages/projects'
  get 'pages/index' 
  root to: 'creatives#index'
  resources :quotes
  resources :contacts
  resources :posts
  
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end
  resources :messages, only: [:new, :create]

  resources :users, only: [:index]
end
