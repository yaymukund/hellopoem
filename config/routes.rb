Hellopoem::Application.routes.draw do
  root to: 'home#index'

  defaults format: :json do
    resources :poems, only: :index
    resources :users, only: :show
  end
end
