Rails.application.routes.draw do


devise_for :users
#My resources for my application writer on rails
resources "articles"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root'pages#home'
get 'about', to: 'pages#about'
end
