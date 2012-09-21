Upfitter::Application.routes.draw do
  resources :dropareas

  resources :accessories

  resources :vehicles

  resources :vehicles do
    member do
      get "show_dropareas"
    end
  end


  root :to => 'vehicles#index'

end