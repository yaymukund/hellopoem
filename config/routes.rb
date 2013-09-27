Hellopoem::Application.routes.draw do
  root to: 'home#index'

  defaults format: :json do
    resources :poems, only: [:index, :show]
    resources :users, only: :show
    resources :lines, only: :create
  end
end
