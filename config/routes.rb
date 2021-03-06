Rails.application.routes.draw do
  get 'home', to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, format: 'json' do
    resources :memos, only: [:index, :create]
  end
end
