Rails.application.routes.draw do
  root to: 'pages#home'
  resources :tasks, :groups
end
