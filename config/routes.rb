HouseholdGizmo::Application.routes.draw do
  root to: 'houses#index'
  resources :houses
  resources :members
  resources :expenses
end
