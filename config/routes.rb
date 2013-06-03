HouseworkGizmo::Application.routes.draw do
  devise_for :members

  root :to => 'houses#index'

  resources :houses
  resources :members
end
