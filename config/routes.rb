Rails.application.routes.draw do
  #TODO: ルートの作成
  root "books#index"
  resources :books
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update]
end

Refile.secret_key = '8da485e1f1ea7c5fb9c0a6a542a71420e6d609a1d21df906cd85efb2337f028d02a5e2d9ad37e622b52f1df9e9b278e48c909058de26281c46df310f5ad070a1'
