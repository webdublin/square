Square::Application.routes.draw do
  get "welcome/index"
  resources :events

  resources :countries

  resources :test_tables
  
  resources :welcomes
  
  match 'search', to: 'welcome#index', via: [:get, :post]  
 
  root "welcome#index"

end
