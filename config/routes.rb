Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'pages/projects'
  get 'pages/index' 
  root to: 'creatives#index'
  resources :quotes
  resources :contacts
  
  resources :conversations do
    resources :messages
  end
 
end
