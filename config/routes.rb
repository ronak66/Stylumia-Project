Rails.application.routes.draw do
  # resources :comments
  resources :posts do
    resources :comments
  end
  root 'static_pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/user/posts', to: 'static_pages#list', as: :post_list
  
  
end
