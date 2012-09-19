Upfitter::Application.routes.draw do
  resources :accessories

  resources :vehicles

  root :to => 'vehicles#index'

end