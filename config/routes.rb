KingsCup::Application.routes.draw do
  root to: 'games#index'
  resources :games, except: [:edit, :update, :destroy]
  resources :players, only: [:index, :new, :create]
end
