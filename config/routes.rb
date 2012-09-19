Upfitter::Application.routes.draw do
  resources :accessories

  resources :vehicles

  root :to => 'static_pages#home'

end