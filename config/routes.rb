Hellopoem::Application.routes.draw do
  root to: 'home#index'
  resources :poems, only: :index
end
