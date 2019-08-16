Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, only: [:show, :index, :new, :create, :destroy] do
    member do
      post 'change_pic', to: 'cocktails#upload_pic', as: 'change_pic'
    end
    resources :doses, only: [:new, :create, :destroy]
  end
end
