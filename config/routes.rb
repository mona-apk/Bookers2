Rails.application.routes.draw do
  #TODO: ルートの作成
  root "books#index"
  resources :books
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit]
end
