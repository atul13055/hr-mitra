Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :employees
  resources :documents
  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  #get  'home' => 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
