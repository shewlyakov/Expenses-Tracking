Rails.application.routes.draw do
  root 'expenses#index'

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :rooms do
    resources :messages
  end
  resources :expenses
  resources :users
end
