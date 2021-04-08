Rails.application.routes.draw do
  root to: 'homes#home'

  # devise_for :users
  devise_for :users, skip: :all
  devise_scope :user do
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
    get 'changepassword' => 'devise/passwords#edit', as: :edit_user_password
    post 'changepassword' => 'devise/passwords#update', as: :user_password
  end

  get 'home', to: 'homes#home'
  get 'expenserequest', to: 'expenses#index'
  get 'attendance', to: 'attendances#index'
  get 'payslip', to: 'pays#index'
  get 'document', to: 'documents#index'

  resources :expenses, except: :index
  resources :attendances, except: :index
end
