Rails.application.routes.draw do



  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'pages/projects'
  get 'pages/index' 
  root to: 'creatives#index'
  resources :quotes
  resources :contacts
  

  
  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  # conversations
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
 
end
