Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#######

Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get 'stablish', to: 'pages#stablish'
  resources :places do
    collection do
      get 'my_places', to: "places#my_places"
    end

    resources :bills, only: [:new, :create, :show, :update] do

      member do
        patch 'update_owner', to: 'bills#update_owner'
      end
      collection do
        get 'my_open_bills', to: "bills#my_open_bills"
      end
    end
  end
  resources :bills, only: [:index] do
    resources :orders do
      collection do
        post 'create_multiple', to: 'orders#create_multiple'
      end
    end
  end
end
