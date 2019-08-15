Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :pictures do
    collection do
      post :newconfirm
    end
    member do
      put :editconfirm
    end
  end
end
