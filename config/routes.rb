Rails.application.routes.draw do
  
  resources :quotes
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'pages/projects'
  get 'pages/index' 
  root to: 'creatives#index'
 
end
