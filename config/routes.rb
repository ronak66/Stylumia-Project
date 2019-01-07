Rails.application.routes.draw do
  resources :posts
  root 'static_pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'user/posts' => 'static_pages#list', as: :post_list
  
end
