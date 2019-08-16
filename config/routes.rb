Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, only: [:show, :index, :new, :create, :destroy] do
    resources :doses, only: [:new, :create, :delete]
  end
end
