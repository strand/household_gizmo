HouseholdGizmo::Application.routes.draw do
  resources :scaffolds


  root :to => 'houses#index'

  resources :houses
  resources :members
  resources :expenses
end
