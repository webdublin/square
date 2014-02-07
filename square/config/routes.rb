Square::Application.routes.draw do
  get "welcome/index"
  resources :events

  resources :countries

  resources :test_tables
  
  resources :welcomes
  
  match 'search', to: 'welcome#index', via: [:get, :post]  
 
  root "welcome#index"
  
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]  
  match 'auth/failure', to: redirect('/'), via: [:get, :post]  
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]  

end
