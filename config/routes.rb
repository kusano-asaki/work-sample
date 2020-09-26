Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  get 'sessions/new'
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create, :show, :index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
