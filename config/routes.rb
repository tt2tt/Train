Rails.application.routes.draw do
  root to: 'homes#home'

  get 'home', to: 'homes#home'
  get 'expenserequest', to: 'expenses#index'

  resources :expenses, except: :index
end
