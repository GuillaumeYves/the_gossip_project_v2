Rails.application.routes.draw do

  get 'dynamic_pages/home'

  get 'dynamic_pages/gossip'

  get 'dynamic_pages/user'

  root 'static_pages#home'

  get '/static_pages/home', to: 'static_pages#home'

  get '/static_pages/team', to: 'static_pages#team'

  get '/static_pages/contact', to: 'static_pages#contact'

  get '/home/:id', to: 'dynamic_pages#home', as: 'home'

  get '/gossip/:id', to: 'dynamic_pages#gossip', as: 'gossip'

  get '/user/:id', to: 'dynamic_pages#user', as: 'user'

  get 'welcome/:first_name', to: 'welcome#personalized', as: 'welcome_personalized'

  resources :gossips



end