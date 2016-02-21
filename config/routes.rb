Rails.application.routes.draw do
  
  resources :quotes
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#index'
  get 'creatives/index'
 
end
