Museum::Engine.routes.draw do
  root to: 'cases#index'

  resources :cases, only: [:index,:show] do
    get 'refresh', on: :member
  end
end