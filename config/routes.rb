HouseholdGizmo::Application.routes.draw do
  root to: 'houses#index'

  resources :houses do
    resources :board
  end

  resources :members
  resources :expenses
end
