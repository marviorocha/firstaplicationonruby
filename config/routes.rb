Rails.application.routes.draw do


devise_for :users
#My resources for my application writer on rails
resources :articles
resources :categories

root'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get 'blog', to: 'pages#blog'
get 'blog/view/:id', to: 'pages#view', as: 'view'
get 'about', to: 'pages#about'

end
