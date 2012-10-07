Upfitter::Application.routes.draw do
  get "static_pages/home"
  get "static_pages/index"
  get "static_pages/selectvehicletimeline"
  get "static_pages/selectvehicle"
  get "static_pages/upfitvehicletimeline"
  get "static_pages/upfitvehicle"

  resources :dropareas

  resources :accessories

  resources :vehicles

  resources :vehicles do
    member do
      get "show_dropareas"
    end
  end


  root :to => 'static_pages#index'

end