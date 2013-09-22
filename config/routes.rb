Hellopoem::Application.routes.draw do
  root to: 'home#index'
  resources :poems, only: :index
  resources :users, only: :show
end
